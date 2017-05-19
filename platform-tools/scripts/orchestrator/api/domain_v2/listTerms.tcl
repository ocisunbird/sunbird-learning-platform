package require java
java::import -package java.util ArrayList List
java::import -package java.util HashMap Map
java::import -package com.ilimi.graph.common JSONUtils

set mr "{\"subject\":{\"label\":\"विषय\",\"value\":\"subject\",\"language\":\"en\",\"description\":\"सामग्री चा विषय\",\"values\":\[{\"label\":\"गणित\",\"value\":\"Maths\",\"telemetry\":\"Maths\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"MATHS\"]}}},{\"label\":\"इंग्रजी\",\"value\":\"English\",\"telemetry\":\"English\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"English\"]}}},{\"label\":\"हिंदी\",\"value\":\"Hindi\",\"telemetry\":\"Hindi\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Hindi\"]}}},{\"label\":\"आसामी\",\"value\":\"Assamese\",\"telemetry\":\"Assamese\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Assamese\"]}}},{\"label\":\"बंगाली\",\"value\":\"Bengali\",\"telemetry\":\"Bengali\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Bengali\"]}}},{\"label\":\"गुजराती\",\"value\":\"Gujarati\",\"telemetry\":\"Gujarati\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Gujarati\"]}}},{\"label\":\"कन्नड\",\"value\":\"Kannada\",\"telemetry\":\"Kannada\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Kannada\"]}}},{\"label\":\"मल्याळम्\",\"value\":\"Malayalam\",\"telemetry\":\"Malayalam\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Malayalam\"]}}},{\"label\":\"मराठी\",\"value\":\"Marathi\",\"telemetry\":\"Marathi\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Marathi\"]}}},{\"label\":\"नेपाळी\",\"value\":\"Nepali\",\"telemetry\":\"Nepali\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Nepali\"]}}},{\"label\":\"ओरिया/उडीसा\",\"value\":\"Oriya\",\"telemetry\":\"Oriya\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Oriya\"]}}},{\"label\":\"पंजाबी\",\"value\":\"Punjabi\",\"telemetry\":\"Punjabi\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Punjabi\"]}}},{\"label\":\"तमिळ\",\"value\":\"Tamil\",\"telemetry\":\"Tamil\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Tamil\"]}}},{\"label\":\"तेलगु\",\"value\":\"Telugu\",\"telemetry\":\"Telugu\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Telugu\"]}}},{\"label\":\"उर्दु\",\"value\":\"Urdu\",\"telemetry\":\"Urdu\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Urdu\"]}}}]},\"medium\":{\"label\":\"माध्यम\",\"value\":\"medium\",\"language\":\"en\",\"description\":\"सूचनेचे माध्यम\",\"values\":\[{\"label\":\"इंग्रजी\",\"value\":\"English\",\"telemetry\":\"English\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"English\"]}}},{\"label\":\"हिंदी\",\"value\":\"Hindi\",\"telemetry\":\"Hindi\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Hindi\"]}}},{\"label\":\"आसामी\",\"value\":\"Assamese\",\"telemetry\":\"Assamese\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Assamese\"]}}},{\"label\":\"बंगाली\",\"value\":\"Bengali\",\"telemetry\":\"Bengali\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Bengali\"]}}},{\"label\":\"गुजराती\",\"value\":\"Gujarati\",\"telemetry\":\"Gujarati\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Gujarati\"]}}},{\"label\":\"कन्नड\",\"value\":\"Kannada\",\"telemetry\":\"Kannada\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Kannada\"]}}},{\"label\":\"मल्याळम्\",\"value\":\"Malayalam\",\"telemetry\":\"Malayalam\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Malayalam\"]}}},{\"label\":\"मराठी\",\"value\":\"Marathi\",\"telemetry\":\"Marathi\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Marathi\"]}}},{\"label\":\"नेपाळी\",\"value\":\"Nepali\",\"telemetry\":\"Nepali\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Nepali\"]}}},{\"label\":\"ओरिया\",\"value\":\"Oriya\",\"telemetry\":\"Oriya\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Oriya\"]}}},{\"label\":\"पंजाबी\",\"value\":\"Punjabi\",\"telemetry\":\"Punjabi\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Punjabi\"]}}},{\"label\":\"तमिळ\",\"value\":\"Tamil\",\"telemetry\":\"Tamil\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Tamil\"]}}},{\"label\":\"तेलगू\",\"value\":\"Telugu\",\"telemetry\":\"Telugu\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Telugu\"]}}},{\"label\":\"उर्दु\",\"value\":\"Urdu\",\"telemetry\":\"Urdu\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Urdu\"]}}},{\"label\":\"इतर\",\"value\":\"Other\",\"telemetry\":\"\",\"description\":\"\",\"search\":{}}]},\"board\":{\"label\":\"परीक्षा मंडळ\",\"value\":\"board\",\"language\":\"en\",\"description\":\"अभ्यासक्रम\",\"values\":\[{\"label\":\"राष्ट्रिय शैक्षणिक संशोधन परिषद (NCERT)\",\"value\":\"NCERT\",\"telemetry\":\"NCERT\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"NCERT\"]}}},{\"label\":\"सी.बी.एस.ई (CBSE)\",\"value\":\"CBSE\",\"telemetry\":\"CBSE\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"CBSE\"]}}},{\"label\":\"आय.सी.एस.ई (ICSE)\",\"value\":\"ICSE\",\"telemetry\":\"ICSE\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"ICSE\"]}}},{\"label\":\"महाराष्ट्र राज्य शैक्षणिक संशोधन व प्रशिक्षण परिषद (MSCERT)\",\"value\":\"MSCERT\",\"telemetry\":\"MSCERT\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"MSCERT\"]}}},{\"label\":\"इतर\",\"value\":\"Other\",\"telemetry\":\"\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"Other\"]}}}]},\"ageGroup\":{\"label\":\"वयोगट\",\"value\":\"ageGroup\",\"language\":\"en\",\"description\":\"विद्यार्थ्याचा वयोगट\",\"values\":\[{\"label\":\"५ वर्षापेक्षा कमी\",\"value\":\"0\",\"telemetry\":\"0\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"<5\"]}}},{\"label\":\"५ वर्ष\",\"value\":\"5\",\"telemetry\":\"5\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"5-6\"]}}},{\"label\":\"६ वर्ष\",\"value\":\"6\",\"telemetry\":\"6\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"6-7\"]}}},{\"label\":\"७ ते ८ वर्षे\",\"value\":\"7\",\"telemetry\":\"7\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"7-8\"]}}},{\"label\":\"८ ते १० वर्षे\",\"value\":\"8\",\"telemetry\":\"8\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"8-10\"]}}},{\"label\":\"१० वर्षापेक्षा जास्त\",\"value\":\"10\",\"telemetry\":\"10\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"इतर\",\"value\":\"-1\",\"telemetry\":\"-1\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"Other\"]}}}]},\"gradeLevel\":{\"label\":\"इयत्ता\",\"value\":\"gradeLevel\",\"language\":\"en\",\"description\":\"विद्यार्थ्याची इयत्ता\",\"values\":\[{\"label\":\"पूर्व प्राथमिक वर्ग/अंगणवाडी/बालवाडी\",\"value\":\"0\",\"telemetry\":\"0\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Kindergarten\"]}}},{\"label\":\"इयत्ता १ ली\",\"value\":\"1\",\"telemetry\":\"1\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 1\"]}}},{\"label\":\"इयत्ता २ ऱी\",\"value\":\"2\",\"telemetry\":\"2\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 2\"]}}},{\"label\":\"इयत्ता ३ ऱी\",\"value\":\"3\",\"telemetry\":\"3\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 3\"]}}},{\"label\":\"इयत्ता ४ थी\",\"value\":\"4\",\"telemetry\":\"4\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 4\"]}}},{\"label\":\"इयत्ता ५ वी5\",\"value\":\"5\",\"telemetry\":\"5\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 5\"]}}},{\"label\":\"इतर\",\"value\":\"-1\",\"telemetry\":\"-1\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Other\"]}}}]},\"age\":{\"label\":\"वयोगट\",\"value\":\"age\",\"language\":\"en\",\"description\":\"वापरणाऱ्याचा वयोगट\",\"values\":\[{\"label\":\"५ वर्षे\",\"value\":\"5\",\"telemetry\":\"5\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"<5\",\"5-6\"]}}},{\"label\":\"६ वर्षे\",\"value\":\"6\",\"telemetry\":\"6\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"5-6\",\"6-7\"]}}},{\"label\":\"७ वर्षे\",\"value\":\"7\",\"telemetry\":\"7\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"6-7\",\"7-8\"]}}},{\"label\":\"८ वर्षे\",\"value\":\"8\",\"telemetry\":\"8\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"7-8\",\"8-10\"]}}},{\"label\":\"९ वर्षे\",\"value\":\"9\",\"telemetry\":\"9\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"8-10\"]}}},{\"label\":\"१० वर्षे\",\"value\":\"10\",\"telemetry\":\"10\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"8-10\",\">10\"]}}},{\"label\":\"११ वर्षे\",\"value\":\"11\",\"telemetry\":\"11\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"१२ वर्षे\",\"value\":\"12\",\"telemetry\":\"12\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"१३ वर्षे\",\"value\":\"13\",\"telemetry\":\"13\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"१४ वर्षे\",\"value\":\"14\",\"telemetry\":\"14\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"१५ वर्षे\",\"value\":\"15\",\"telemetry\":\"15\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"१६ वर्षे\",\"value\":\"16\",\"telemetry\":\"16\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"१७ वर्षे\",\"value\":\"17\",\"telemetry\":\"17\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"१८ वर्षे\",\"value\":\"18\",\"telemetry\":\"18\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"इतर\",\"value\":\"-1\",\"telemetry\":\"-1\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"Others\"]}}}]},\"ttl\":24}"

set en "{\"gradeLevel\":{\"label\":\"Grade Level\",\"value\":\"gradeLevel\",\"language\":\"en\",\"description\":\"Grade Level of the child\",\"values\":\[{\"label\":\"KG\",\"value\":\"0\",\"telemetry\":\"0\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Kindergarten\"]}}},{\"label\":\"Grade 1\",\"value\":\"1\",\"telemetry\":\"1\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 1\"]}}},{\"label\":\"Grade 2\",\"value\":\"2\",\"telemetry\":\"2\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 2\"]}}},{\"label\":\"Grade 3\",\"value\":\"3\",\"telemetry\":\"3\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 3\"]}}},{\"label\":\"Grade 4\",\"value\":\"4\",\"telemetry\":\"4\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 4\"]}}},{\"label\":\"Grade 5\",\"value\":\"5\",\"telemetry\":\"5\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 5\"]}}},{\"label\":\"Others\",\"value\":\"-1\",\"telemetry\":\"-1\",\"description\":\"\",\"search\":{\"filters\":{}}}]},\"subject\":{\"label\":\"Subject\",\"value\":\"subject\",\"language\":\"en\",\"description\":\"Subject of the content\",\"values\":\[{\"label\":\"Maths\",\"value\":\"Maths\",\"telemetry\":\"Maths\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"MATHS\"]}}},{\"label\":\"English\",\"value\":\"English\",\"telemetry\":\"English\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"English\"]}}},{\"label\":\"Hindi\",\"value\":\"Hindi\",\"telemetry\":\"Hindi\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Hindi\"]}}},{\"label\":\"Assamese\",\"value\":\"Assamese\",\"telemetry\":\"Assamese\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Assamese\"]}}},{\"label\":\"Bengali\",\"value\":\"Bengali\",\"telemetry\":\"Bengali\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Bengali\"]}}},{\"label\":\"Gujarati\",\"value\":\"Gujarati\",\"telemetry\":\"Gujarati\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Gujarati\"]}}},{\"label\":\"Kannada\",\"value\":\"Kannada\",\"telemetry\":\"Kannada\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Kannada\"]}}},{\"label\":\"Malayalam\",\"value\":\"Malayalam\",\"telemetry\":\"Malayalam\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Malayalam\"]}}},{\"label\":\"Marathi\",\"value\":\"Marathi\",\"telemetry\":\"Marathi\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Marathi\"]}}},{\"label\":\"Nepali\",\"value\":\"Nepali\",\"telemetry\":\"Nepali\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Nepali\"]}}},{\"label\":\"Oriya\",\"value\":\"Oriya\",\"telemetry\":\"Oriya\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Oriya\"]}}},{\"label\":\"Punjabi\",\"value\":\"Punjabi\",\"telemetry\":\"Punjabi\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Punjabi\"]}}},{\"label\":\"Tamil\",\"value\":\"Tamil\",\"telemetry\":\"Tamil\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Tamil\"]}}},{\"label\":\"Telugu\",\"value\":\"Telugu\",\"telemetry\":\"Telugu\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Telugu\"]}}},{\"label\":\"Urdu\",\"value\":\"Urdu\",\"telemetry\":\"Urdu\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Urdu\"]}}}]},\"medium\":{\"label\":\"Medium\",\"value\":\"medium\",\"language\":\"en\",\"description\":\"Medium of instruction\",\"values\":\[{\"label\":\"English\",\"value\":\"English\",\"telemetry\":\"English\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"English\"]}}},{\"label\":\"Hindi\",\"value\":\"Hindi\",\"telemetry\":\"Hindi\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Hindi\"]}}},{\"label\":\"Assamese\",\"value\":\"Assamese\",\"telemetry\":\"Assamese\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Assamese\"]}}},{\"label\":\"Bengali\",\"value\":\"Bengali\",\"telemetry\":\"Bengali\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Bengali\"]}}},{\"label\":\"Gujarati\",\"value\":\"Gujarati\",\"telemetry\":\"Gujarati\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Gujarati\"]}}},{\"label\":\"Kannada\",\"value\":\"Kannada\",\"telemetry\":\"Kannada\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Kannada\"]}}},{\"label\":\"Malayalam\",\"value\":\"Malayalam\",\"telemetry\":\"Malayalam\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Malayalam\"]}}},{\"label\":\"Marathi\",\"value\":\"Marathi\",\"telemetry\":\"Marathi\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Marathi\"]}}},{\"label\":\"Nepali\",\"value\":\"Nepali\",\"telemetry\":\"Nepali\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Nepali\"]}}},{\"label\":\"Oriya\",\"value\":\"Oriya\",\"telemetry\":\"Oriya\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Oriya\"]}}},{\"label\":\"Punjabi\",\"value\":\"Punjabi\",\"telemetry\":\"Punjabi\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Punjabi\"]}}},{\"label\":\"Tamil\",\"value\":\"Tamil\",\"telemetry\":\"Tamil\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Tamil\"]}}},{\"label\":\"Telugu\",\"value\":\"Telugu\",\"telemetry\":\"Telugu\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Telugu\"]}}},{\"label\":\"Urdu\",\"value\":\"Urdu\",\"telemetry\":\"Urdu\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Urdu\"]}}},{\"label\":\"Other\",\"value\":\"Other\",\"telemetry\":\"\",\"description\":\"\",\"search\":{}}]},\"ageGroup\":{\"label\":\"Age Group\",\"value\":\"ageGroup\",\"language\":\"en\",\"description\":\"Age Group of the child\",\"values\":\[{\"label\":\"<5 Years\",\"value\":\"0\",\"telemetry\":\"0\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"<5\"]}}},{\"label\":\"5 Years\",\"value\":\"5\",\"telemetry\":\"5\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"5-6\"]}}},{\"label\":\"6 Years\",\"value\":\"6\",\"telemetry\":\"6\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"6-7\"]}}},{\"label\":\"7-8 Years\",\"value\":\"7\",\"telemetry\":\"7\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"7-8\"]}}},{\"label\":\"8-10 Years\",\"value\":\"8\",\"telemetry\":\"8\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"8-10\"]}}},{\"label\":\">10 Years\",\"value\":\"10\",\"telemetry\":\"10\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"Others\",\"value\":\"-1\",\"telemetry\":\"-1\",\"description\":\"\",\"search\":{\"filters\":{}}}]},\"ttl\":24,\"board\":{\"label\":\"Board\",\"value\":\"board\",\"language\":\"en\",\"description\":\"Curriculum\",\"values\":\[{\"label\":\"NCERT\",\"value\":\"NCERT\",\"telemetry\":\"NCERT\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"NCERT\"]}}},{\"label\":\"CBSE\",\"value\":\"CBSE\",\"telemetry\":\"CBSE\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"CBSE\"]}}},{\"label\":\"ICSE\",\"value\":\"ICSE\",\"telemetry\":\"ICSE\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"ICSE\"]}}},{\"label\":\"MSCERT\",\"value\":\"MSCERT\",\"telemetry\":\"MSCERT\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"MSCERT\"]}}},{\"label\":\"Other\",\"value\":\"Other\",\"telemetry\":\"\",\"description\":\"\",\"search\":{\"filters\":{}}}]},\"age\":{\"label\":\"Age\",\"value\":\"age\",\"language\":\"en\",\"description\":\"Age list for user profiles\",\"values\":\[{\"label\":\"5 Years\",\"value\":\"5\",\"telemetry\":\"5\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"<5\",\"5-6\"]}}},{\"label\":\"6 Years\",\"value\":\"6\",\"telemetry\":\"6\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"5-6\",\"6-7\"]}}},{\"label\":\"7 Years\",\"value\":\"7\",\"telemetry\":\"7\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"6-7\",\"7-8\"]}}},{\"label\":\"8 Years\",\"value\":\"8\",\"telemetry\":\"8\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"7-8\",\"8-10\"]}}},{\"label\":\"9 Years\",\"value\":\"9\",\"telemetry\":\"9\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"8-10\"]}}},{\"label\":\"10 Years\",\"value\":\"10\",\"telemetry\":\"10\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"8-10\",\">10\"]}}},{\"label\":\"11 Years\",\"value\":\"11\",\"telemetry\":\"11\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"12 Years\",\"value\":\"12\",\"telemetry\":\"12\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"13 Years\",\"value\":\"13\",\"telemetry\":\"13\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"14 Years\",\"value\":\"14\",\"telemetry\":\"14\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"15 Years\",\"value\":\"15\",\"telemetry\":\"15\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"16 Years\",\"value\":\"16\",\"telemetry\":\"16\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"17 Years\",\"value\":\"17\",\"telemetry\":\"17\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"18 Years\",\"value\":\"18\",\"telemetry\":\"18\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"]}}},{\"label\":\"Other\",\"value\":\"-1\",\"telemetry\":\"-1\",\"description\":\"\",\"search\":{\"filters\":{}}}]},\"channel\":{\"label\":\"Channel\",\"value\":\"channel\",\"language\":\"en\",\"description\":\"List of partner channels\",\"values\":\[{\"label\":\"APSSDC\",\"value\":\"AP_1\",\"telemetry\":\"AP_1\",\"description\":\"\",\"search\":{\"filters\":{\"tags\":\[\"APSSDC\"]}}}]},\"audience\":{\"label\":\"audience\",\"value\":\"audience\",\"language\":\"en\",\"description\":\"Purpose of the content\",\"values\":\[{\"label\":\"Learner\",\"value\":\"learner\",\"telemetry\":\"learner\",\"description\":\"\",\"search\":{\"filters\":{\"audience\":\[\"learner\"]}}},{\"label\":\"Instructor\",\"value\":\"instructor\",\"telemetry\":\"instructor\",\"description\":\"\",\"search\":{\"filters\":{\"audience\":\[\"instructor\"]}}}]}}"

set is_langId_null [java::isnull $language]
if {($is_langId_null == 0)} {
    set langId [$language toString]
	if {$langId == "mr"} {
		set terms [java::new String $mr]
	} else {
		set terms [java::new String $en]
	}
} else {
	set terms [java::new String $en]
}
set termsObj [java::call JSONUtils "convertJSONString" $terms]
set response_list [create_response $termsObj]
return $response_list
