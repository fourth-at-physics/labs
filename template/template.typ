#set page(
  paper: "a4",
  margin: (top: 20mm, bottom: 20mm, left: 30mm, right: 10mm),
)


#set math.equation(numbering: (..n) => numbering("(1)", ..n))

#show ref: it => {
  let eq = math.equation
  let el = it.element
  // Skip all other references.
  if el == none or el.func() != eq { return it }
  // Override equation references.
  link(el.location(), numbering(
    el.numbering,
    ..counter(eq).at(el.location())
  ))
}

#set text(size: 14pt)


#let mn(x) = $display(dash(#x))$
#let dfrac(a, b) = $display(frac(#a, #b))$
#let dfrac1(a) = $dfrac(1, #a)$
#let dsum(i, n) = $display(sum_(#i)^(#n))$
#let alc(body) = align(center)[#body]


#align(center)[
  Санкт-Петербургский национальный исследовательский Академический университет имени Ж.И. Алфёрова Российской академии наук
]

#v(1em)

#set text(size: 13pt)

#text()[
#line(length: 100%, stroke: 0.2mm)
#grid(
  columns: (1fr, 1fr),

  align(left)[
Группа: 101.1
    
Студент: Пухов Евгений

Преподаватель: Ефремова Е. А.

Лаборант: Василькова Е.
  ],
  align(center)[
    К работе допущен: 26.09.2025 г.
    
Работа выполнена: 10.10.2025 г.

Отчёт принят:]
)

// name of the lab
#align(center)[
#text(size: 14pt)[
   Рабочий протокол и отчёт по лабораторной работе № _Номер лабораторной_
   
  *«_НАЗВАНИЕ ЛАБАРАТОРНОЙ_»*]
]



#line(length: 100%, stroke: 0.2mm)
]


#set heading(numbering: "1. ")

#let block_counter = counter("cnt")

#let blck(head, body) = [ 
#align(left)[
  #text(size : 15pt)[
     #context block_counter.step()
  #context block_counter.get().first(). #head
  ]
]

#set par(first-line-indent: (
  amount: 1.0em,
  all: true,
  
),
justify: true)

#text(size: 13pt)[
  
  
  #body
  #v(1em)
]

]


#pagebreak()
