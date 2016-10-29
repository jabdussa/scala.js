package com.cheatrz.clients.www

import org.scalajs.dom
import scala.scalajs.js.annotation.JSExport

import scalatags.Text

class IndexFrag[Builder, Output <: FragT, FragT](val bundle: scalatags.generic.Bundle[Builder, Output, FragT]) {

  val htmlFrag  = {

    import bundle.all._

      body(
        h1("This is my title"),
        div(
          p("This is my first paragraph"),
          p("This is my second paragraph")
        )
      )

  }

}


@JSExport
object Index {

  @JSExport
  def main(t1: String): Unit = {
  //def main(t1: String, t2: String, t3: String, t4: String): Unit = {
    val t = new IndexFrag(scalatags.Text)
    dom.document.getElementById(t1).innerHTML = t.htmlFrag.render
  }

}