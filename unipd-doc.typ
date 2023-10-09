// Comment-style lecture number annotation (# Lecture n)
#let lecture(number) = {
  set text(gray)
  [\# Lecture #number]
}

#let notes() = doc => {
  set text(font: "Arial")
  doc
}

#let unipd-doc(title: none, subtitle: none, author: none, date: none) = doc => {
  let unipd-red = rgb(180, 27, 33)

  set page(numbering: "1")
  set list(marker: ([•], [◦], [--]))
  set heading(numbering: "1.1.")
  show heading.where(level: 1): it => {
    set text(fill: unipd-red)
    it
  }

  align(center, {
    v(10em)
    figure(image("images/unipd-logo.png", width: 50%))
    v(3em)

    text(size: 30pt, weight: "bold", fill: unipd-red, smallcaps(title))
    v(5pt)
    text(size: 25pt, weight: "bold", fill: unipd-red, subtitle)
    parbreak()

    set text(size: 18pt)
    author
    parbreak()

    date
    pagebreak()
  })

  show outline.entry.where(level: 1): it => {
    v(1em, weak: true)
    strong(it)
  }

  outline(
    title: "Index",
    indent: 2em,
  )

  doc
}
