assemblyOutputPath in assembly := file("../work-distributor.jar")

test in assembly := {}

mainClass in assembly := Option("co.s4n.work.distributor.Main")

assemblyMergeStrategy in assembly := {
  case x =>
    val oldStrategy = (assemblyMergeStrategy in assembly).value
    oldStrategy(x)
}
