enablePlugins(ScalaJSPlugin)

name := "WWW.CHEATRZ.COM"

scalaVersion := "2.11.8"

libraryDependencies ++= Seq(
  "org.scala-js" %%% "scalajs-dom" % "0.9.1",
  "be.doeraene" %%% "scalajs-jquery" % "0.9.0",
  "com.lihaoyi" %% "scalatags" % "0.6.1"
)

//jsDependencies += RuntimeDOM

//OpersistLauncher := true