package com.ilimi.taxonomy.content.pipeline.initializer;

import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import com.ilimi.common.dto.Response;
import com.ilimi.common.exception.ClientException;
import com.ilimi.taxonomy.content.common.ContentErrorMessageConstants;
import com.ilimi.taxonomy.content.enums.ContentErrorCodeConstants;
import com.ilimi.taxonomy.content.operation.initializer.BundleInitializer;
import com.ilimi.taxonomy.content.operation.initializer.PublishInitializer;
import com.ilimi.taxonomy.content.operation.initializer.UploadInitializer;
import com.ilimi.taxonomy.content.pipeline.BasePipeline;

/**
 * The Class InitializePipeline is a PipelineClass, extends the BasePipline which holds all 
 * commmon methods for a ContentNode and its operations
 * Based on the ContentOperation specfied InitializePipeline Initiates the respective OperationIntializers
 */
public class InitializePipeline extends BasePipeline {

	/** The logger. */
	private static Logger LOGGER = LogManager.getLogger(InitializePipeline.class.getName());

	/** The basePath. */
	protected String basePath;
	
	/** The contentId. */
	protected String contentId;

	/**
	 * InitializePipeline()
	 * sets the basePath and ContentId
	 *
	 * @param BasePath the basePath
	 * @param contentId the contentId
	 * checks if the basePath is valid else throws ClientException
	 * checks if the ContentId is not null else throws ClientException
	 */
	public InitializePipeline(String basePath, String contentId) {
		if (!isValidBasePath(basePath))
			throw new ClientException(ContentErrorCodeConstants.INVALID_PARAMETER.name(),
					ContentErrorMessageConstants.INVALID_CWP_CONST_PARAM + " | [Path does not Exist.]");
		if (StringUtils.isBlank(contentId))
			throw new ClientException(ContentErrorCodeConstants.INVALID_PARAMETER.name(),
					ContentErrorMessageConstants.INVALID_CWP_CONST_PARAM + " | [Invalid Content Id.]");
		this.basePath = basePath;
		this.contentId = contentId;
	}

	/**
	 * Init() which marks the begin of the InitializePipeline
	 *
	 * @param operation the Operation
	 * @param Map the parameterMap
	 * checks if operation or parameterMap is empty, throws ClientException
	 * else based on the OPERATION(upload, publish or bundle) initializes 
	 * respective ContentOperationInitializers
	 * @return the response
	 */
	public Response init(String operation, Map<String, Object> parameterMap) {
		Response response = new Response();
		if (StringUtils.isBlank(operation))
			throw new ClientException(ContentErrorCodeConstants.INVALID_PARAMETER.name(),
					ContentErrorMessageConstants.INVALID_CWP_INIT_PARAM + " | [Invalid Operation.]");
		if (null != parameterMap && StringUtils.isNotBlank(operation)) {
			LOGGER.info("Performing Content Operation: " + operation);
			switch (operation) {
			case "upload":
			case "UPLOAD": {
				UploadInitializer uploadInitializer = new UploadInitializer(basePath, contentId);
				response = uploadInitializer.initialize(parameterMap);
			}
				break;

			case "publish":
			case "PUBLISH": {
				PublishInitializer publishInitializer = new PublishInitializer(basePath, contentId);
				response = publishInitializer.initialize(parameterMap);
			}
				break;

			case "bundle":
			case "BUNDLE": {
				BundleInitializer bundleInitializer = new BundleInitializer(basePath, contentId);
				response = bundleInitializer.initialize(parameterMap);
			}
				break;

			default:
				LOGGER.info("Invalid Content Operation: " + operation);
				break;
			}

		}
		return response;
	}

}
