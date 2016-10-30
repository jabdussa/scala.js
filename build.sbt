enablePlugins(ScalaJSPlugin)

name := "SCALA.JS_EXAMPLES_SCALADORES"

/**
  *
  * Source:
  *
  *   https://github.com/jabdussa/scala.js/tree/scala.js_scaladores
  *
   */


version := "0.1-SNAPSHOT"

scalaVersion := "2.11.7"

persistLauncher in Compile := true

persistLauncher in Test := false

libraryDependencies ++= Seq(
  "org.querki" %%% "jquery-facade" % "1.0-RC2",
  "org.scala-js" %%% "scalajs-dom" % "0.8.2"
)