INCLUDE(source/STRUCTURE/DOCKING/sources.cmake)

### list all filenames of the directory here ###
SET(SOURCES_LIST
	addHydrogenProcessor.C
	analyticalSES.C
	assignBondOrderProcessor.C
	atomBijection.C
	atomTyper.C
	bindingPocketProcessor.C
	buildBondsProcessor.C
	chainBuilder.C
	connolly.C
	defaultProcessors.C
	DNAMutator.C
	fragmentDB.C
	geometricProperties.C
	geometricTransformations.C
	graphEdge.C
	graphFace.C
	graphVertex.C
	HBondProcessor.C
	hybridisationProcessor.C
	kekulizer.C
	moleculeAssembler.C
	molecularGraph.C
	numericalSAS.C
	peptides.C
	peptideBuilder.C
	radialDistributionFunction.C
	reconstructFragmentProcessor.C
	RDFIntegrator.C
	RDFParameter.C
	RDFSection.C
	reducedSurface.C
	residueChecker.C
	ringAnalyser.C
	ringClusterer.C
	rsConstructor.C
	RSEdge.C
	RSFace.C
	RSVertex.C
	SASEdge.C
	SASFace.C
	SASVertex.C
	sdGenerator.C
	SESEdge.C
	SESFace.C
	SESVertex.C
	secondaryStructureProcessor.C
	smilesParser.C
	smartsParser.C
	smartsMatcher.C
	solventAccessibleSurface.C
	solventExcludedSurface.C
	structureMapper.C
	surfaceProcessor.C
	triangle.C
	triangleEdge.C
	trianglePoint.C
	triangulatedSAS.C
	triangulatedSES.C
	triangulatedSurface.C
	UCK.C
	residueRotamerSet.C
	rotamerLibrary.C
	RMSDMinimizer.C
)

ADD_BALL_SOURCES("STRUCTURE" "${SOURCES_LIST}")

ADD_BALL_PARSER_LEXER("STRUCTURE" "smilesParser" "SmilesParser")
ADD_BALL_PARSER_LEXER("STRUCTURE" "smartsParser" "SmartsParser")