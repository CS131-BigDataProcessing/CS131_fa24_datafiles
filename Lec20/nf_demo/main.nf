params.inputDir = params.inputDir ?: './data'
params.outputDir = params.outputDir ?: './results'

workflow {
    // Create a channel of input files from the input directory
    inputFiles = Channel.fromPath("${params.inputDir}/*.txt")

    // This will print the list of files to the log
    inputFiles.view()

    // Pass the channel to the process
    exampleTask(inputFiles)
}

process exampleTask {
    input:
    path inputFile

    output:
    path("${params.outputDir}/processed_${inputFile.baseName}.txt")

    script:
    """
    mkdir -p ${params.outputDir}
    echo "Processing $inputFile" > ${params.outputDir}/processed_${inputFile.baseName}.txt
    echo "Output file created: ${params.outputDir}/processed_${inputFile.baseName}.txt"
    """
}


