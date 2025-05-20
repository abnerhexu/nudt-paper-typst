#import "@preview/cuti:0.3.0": show-cn-fakebold
#import "templates/i-figured.typ"
#show: show-cn-fakebold
#let tnr = "Times New Roman"
#let fsong = (tnr, "FangSong")
#let song = (tnr, "SimSun")
#let hei = (tnr, "SimHei")

#let project(title: "", name: "", idnum: "", major1: "", major2: "", college: "", grade: "", advisor: "", jobtitle: "", unit:"", sn: "", paper-type: "公开", blind-review: false, body) = {
  show strong: it => {
    show-cn-fakebold(it)
  }
  // Set the document's basic properties.
  // set document(title: title)
  counter(page).update(0)
  set page(
    margin: (left: 30mm, right: 30mm, top: 30mm, bottom: 20mm),
    paper: "a4"
  )
  set text(font: ("TeX Gyre Termes Math", "SimSun"), lang: "zh")
  show regex("[\u0025]"): set text(font: "Times LT Pro")
  // Flag (can be commented)
  // text(font: "SimHei", size: 16pt)[附件3]
  // Or 
  v(-16pt)
  context [
    #if blind-review {
      grid(columns: (1fr, 1fr), [#align(left)[#show-cn-fakebold[#text(font: song, size: 14pt)[编号：#underline(extent: 1em, offset: 3pt, stroke: (thickness: 0.5pt))[#h(1em)#text("                                     ")#h(1em)]]]]], [#align(right)[#show-cn-fakebold[#text(font: song, size: 14pt)[密级：#underline(extent: 2em, offset: 3pt, stroke: (thickness: 0.5pt))[#h(2em)公开#h(2em)]]]]])
    } else {
      grid(columns: (1fr, 1fr), [#align(left)[#show-cn-fakebold[#text(font: song, size: 14pt)[编号：#underline(extent: 1em, offset: 3pt, stroke: (thickness: 0.5pt))[#h(1em)#sn#h(1em)]]]]], [#align(right)[#show-cn-fakebold[#text(font: song, size: 14pt)[密级：#underline(extent: 2em, offset: 3pt, stroke: (thickness: 0.5pt))[#h(2em)#paper-type#h(2em)]]]]])
    }
  ]
  // Space
  v(69pt)
  v(20pt)
  // Title row.
  align(center)[
    #block(text(size: 30pt)[*本 科 毕 业 论 文*])
  ]
  // Space
  v(100pt)
  align(center)[
    #grid(columns: (3.53fr, 10.82fr), row-gutter: 5pt, 
    [#text(weight: "bold", size: 16pt)[*课题名称：*]], [#show-cn-fakebold[#text(weight: "bold", font: fsong, size: 16pt)[#title]]], [], [#line(length: 100%, stroke: (thickness: 0.5pt))])
  ]
  v(73.5pt)
  // Author information.
  grid(
    columns: (0.22fr, 0.29fr, 0.22fr, 0.29fr),
    rows: (14pt, 16pt, 2pt, 14pt, 16pt, 2pt, 14pt, 16pt, 2pt, 14pt, 16pt, 2pt),
    v(14pt),
    v(14pt),
    v(14pt),
    v(14pt),
    [#text(size: 14pt, font: song, tracking: 9pt, "学员姓名")#text(size: 14pt, font: song)[：]],
    context [
      #if blind-review {
        align(center, text(size: 14pt, font: fsong, ""))
      } else {
        align(center, text(size: 14pt, font: fsong, name))
      }],
    [#text(size: 14pt, font: song, tracking: 56pt, "学号")#text(size: 14pt, font: song)[：]],
    context [
      #if blind-review {
        align(center, text(size: 14pt, font: tnr, ""))
      } else {
        align(center, text(size: 14pt, font: tnr, idnum))
      }
    ],
    v(14pt),
    line(length: 100%, stroke: (thickness: 0.5pt)),
    v(14pt),
    line(length: 100%, stroke: (thickness: 0.5pt)),
    v(14pt),
    v(14pt),
    v(14pt),
    v(14pt),
    // align(center, text(size: 14pt, font: fsong, major1)),
    [#text(size: 14pt, font: song, "首次任职专业")#text(size: 14pt, font: song)[：]],
    context [
      #if blind-review {
        align(center, text(size: 14pt, font: fsong, ""))
      } else {
        align(center, text(size: 14pt, font: fsong, major2))
      }
    ],
    text(size: 14pt, font: song, "学历教育专业："),
    context [
      #if blind-review {
        align(center, text(size: 14pt, font: fsong, ""))
      } else {
        align(center, text(size: 14pt, font: fsong, major1))
      }
    ],
    text(""),
    line(length: 100%, stroke: (thickness: 0.5pt)),
    text(""),
    line(length: 100%, stroke: (thickness: 0.5pt)),
    v(14pt),
    v(14pt),
    v(14pt),
    v(14pt),
    [#text(size: 14pt, font: song, tracking: 9pt, "命题学院")#text(size: 14pt, font: song)[：]],
    context [
      #if blind-review {
        align(center, text(size: 14pt, font: fsong, ""))
      } else {
        align(center, text(size: 14pt, font: fsong, college))
      }
    ],
    [#text(size: 14pt, font: song, tracking: 56pt, "年级")#text(size: 14pt, font: song)[：]],
    context [
      #if blind-review {
        align(center, text(size: 14pt, font: fsong, ""))
      } else {
        align(center, text(size: 14pt, font: fsong, grade))
      }
    ],
    text(""),
    line(length: 100%, stroke: (thickness: 0.5pt)),
    text(""),
    line(length: 100%, stroke: (thickness: 0.5pt)),
    v(14pt),
    v(14pt),
    v(14pt),
    v(14pt),
    [#text(size: 14pt, font: song, tracking: 9pt, "指导教员")#text(size: 14pt, font: song)[：]],
    context [
      #if blind-review {
        align(center, text(size: 14pt, font: fsong, ""))
      } else {
        align(center, text(size: 14pt, font: fsong, advisor))
      }
    ],
    [#text(size: 14pt, font: song, tracking: 56pt, "职称")#text(size: 14pt, font: song)[：]],
    context [
      #if blind-review {
        align(center, text(size: 14pt, font: fsong, ""))
      } else {
        align(center, text(size: 14pt, font: fsong, jobtitle))
      }
    ],
    text(""),
    line(length: 100%, stroke: (thickness: 0.5pt)),
    text(""),
    line(length: 100%, stroke: (thickness: 0.5pt)),
  )
  v(-12pt)
  grid(
    columns: (0.22fr, 0.80fr),
    rows: (14pt, 15pt, 8pt),
    text(size: 14pt, ""),
    text(size: 14pt, ""),
    [#text(size: 14pt, font: song, tracking: 9pt, "所属单位")#text(size: 14pt, font: song)[：]],
    context [
      #if blind-review {
        align(center, text(size: 14pt, font: fsong, ""))
      } else {
        align(center, text(size: 14pt, font: fsong, unit))
      }
    ],
    text(""),
    line(length: 100%, stroke: (thickness: 0.5pt)),
  )
  v(120pt)
  align(center)[#text(font: hei, size: 16pt)[国防科技大学教育训练部制]]
  pagebreak()
  set page(header: context {
  if counter(page).get().first() > 1 [
    _Lisa Strassner's Thesis_
    #h(1fr)
    National Academy of Sciences
  ]
})
  // Main body.
  // show par: set block(spacing: 6pt) // for older typst version
  set page(header: [
    #set par(spacing: 6pt)
    #align(center)[#text(size: 9pt)[国防科技大学本科毕业论文]]
    #v(-0.3em)
    #line(length: 100%, stroke: (thickness: 0.5pt))
    #v(-0.3em)
    #line(length: 100%, stroke: (thickness: 0.5pt))
])
  set par(spacing: 6pt)
  set par(justify: true, leading: 6pt, first-line-indent: 2em)
  let preface-outline = state("preface-outline", false)
  set page(footer: context [
    #v(-1em)
    #set par(spacing: 6pt)
    #let cur = counter(page).display("I")
    #line(length: 100%, stroke: (thickness: 0.5pt))
    #v(-0.2em)
    #align(center)[#text(font: tnr, size: 9pt)[第#cur 页]]
  ], numbering: (..n) => context {
  if preface-outline.get() {
    numbering("i", ..n)
  } else {
    numbering("1 / 1", ..n)
  }
})

  align(center)[#text(size: 16pt, font: hei)[目#h(1em)录]]
  v(-8pt)
  set text(size: 12pt)
  set par(leading: 1em, spacing: 1em)
  show outline.entry: it => {
    set par(first-line-indent: 0em)
    let seq = it.body()
    let element = it.element.body
    let prefix = it.prefix()
    // [#prefix #it.page()]
    // v(0.5em)
    // let cname = seq.remove(0)
    [#h(2em)#prefix#h(1em)#it.element.body #box(width: 1fr, it.fill) #it.page()
    ]
  }
  show outline.entry.where(level: 6): it => {
    set par(first-line-indent: 0em)
    preface-outline.update(true)
    let ebody = it.element.body
    [#text(weight: "regular")[#it.element.body] #box(width: 1fr, it.fill) #it.page()
    
    ]
    preface-outline.update(false)
  }
  show outline.entry.where(level: 7): it => {
    set par(first-line-indent: 0em)
    let loc = it.element.location()
    let page_n = loc.page-numbering()
    [#it.element.body #box(width: 1fr, it.fill) #it.page()
    
    ]
  }
  show outline.entry.where(level: 1): it => {
    set par(first-line-indent: 0em)
    let ele = it.body()
    let seq = it.element
    // let cname = seq.remove(0)
    [第#it.prefix() 章#h(1em)#ele #box(width: 1fr, it.fill) #it.page()
    
    ]
  }
  show outline.entry.where(level: 2): it => {
    set par(first-line-indent: 0em)
    let ele = it.body()
    let seq = it.element.numbering
    // let cname = seq.remove(0)
    let prefix = it.prefix()
    [#h(1em)#prefix#h(1em)#it.element.body #box(width: 1fr, it.fill) #it.page()
    ]
  }
  outline(title: "", indent: 1em)
  pagebreak()
  
  set heading(numbering: "1.1")
  counter(heading).update(0)
  show heading.where(
    level: 6
  ): it => [
    #set align(center)
    #set par(leading: 0em, spacing: 0em)
    #set text(size: 16pt, font: hei, style: "normal", weight: "bold")
    #let cur = counter(heading).display()
    #it.body
  ]
  show heading.where(
    level: 7
  ): it => [
    #set align(center)
    #set par(leading: 0em, spacing: 0em)
    #set text(size: 16pt, font: hei, style: "normal", weight: "regular")
    #let cur = counter(heading).display()
    #it.body
  ]

  counter(page).update(1)
  set page(footer: context [
    #v(-1em)
    #set par(spacing: 6pt)
    #let cur = counter(page).display("i")
    #line(length: 100%, stroke: (thickness: 0.5pt))
    #v(-0.2em)
    #align(center)[#text(font: tnr, size: 9pt)[第#cur 页]]
  ])
  set par(spacing: 18pt)

  // align(center)[#text(size: 16pt, font: hei)[摘#h(1em)要]]
  heading([摘#h(1em)要], level: 6)
  v(16pt)
  text(font: song, size: 12pt)[摘要内容。]
  v(0pt)
  text(font: hei, size: 12pt)[关键词：]
  text(font: song, size: 12pt)[关键词1；关键词2；关键词3]

  pagebreak()
  set page(footer: context [
    #v(-1em)
    #set par(spacing: 6pt)
    #let cur = counter(page).display("i")
    #line(length: 100%, stroke: (thickness: 0.5pt))
    #v(-0.2em)
    #align(center)[#text(font: tnr, size: 9pt)[第#cur 页]]
  ])
  // align(center)[#text(size: 16pt, font: tnr, weight: "bold", "ABSTRACT")]
  heading([ABSTRACT], level: 6)
  v(16pt)
  text(font: song, size: 12pt)[Abstract.]
  v(0pt)
  text(font: hei, size: 12pt, weight: "bold")[KEY WORDS: ]
  text(font: song, size: 12pt)[key word 1, key word 2, key word 3]
  pagebreak()

  counter(page).update(1)
  set page(footer: context [
    #v(-1em)
    #set par(spacing: 6pt)
    #let cur = counter(page).display("1")
    #line(length: 100%, stroke: (thickness: 0.5pt))
    #v(-0.2em)
    #align(center)[#text(font: tnr, size: 9pt)[第#cur 页]]
  ])
  // align(center)[#text(size: 16pt, font: hei)[前#h(1em)言]]
  // heading([前#h(1em)言], level: 6)
  // v(16pt)
  // set par(spacing: 12pt, leading: 1em)

  // text(font: song, size: 12pt)[
  //   前言内容。

  //   前言第二段。

  //   前言第三段。
    
  //   ]
  
  // set heading(numbering: "1.1")
  // counter(heading).update(0)
  show heading.where(
    level: 1
  ): it => [
    #set align(center)
    #set par(leading: 0em, spacing: 0em)
    #set text(size: 16pt, font: hei, style: "normal", weight: "regular")
    #let cur = counter(heading).display()
    第#cur 章#h(1em)#it.body
    #v(1em)
    #counter(figure.where(kind: "i-figured-"+repr(image))).update(0)
    #counter(figure.where(kind: "i-figured-"+repr(table))).update(0)
    #counter(figure.where(kind: "i-figured-"+repr(math.equation))).update(0)
  ]

  show heading.where(
    level: 2
  ): it => box(width: 100%)[
    #set par(leading: 0em, spacing: 0em)
    #set text(size: 14pt, font: hei, style: "normal", weight: "regular")
    #let cur = counter(heading).display()
    #cur#h(1em)#it.body
    #v(1em)
  ]

  show heading.where(
    level: 3
  ): it => box(width: 100%)[
    #set text(size: 12pt, font: hei, style: "normal", weight: "regular")
    #let cur = counter(heading).display()
    #cur#h(1em)#it.body
  ]

  set text(size: 12pt)
  set par(leading: 1em)
  body

  pagebreak()
  heading([#text(weight: "bold")[致#h(1em)谢]], level: 7)
  v(16pt)
  set par(spacing: 12pt, leading: 1em)

  context [
    #if blind-review {

    } else {
      text(font: song, size: 12pt)[
时光荏苒，转眼间我的大学本科生活即将画上句号。回首这四年的点点滴滴，心中充满了无尽的感慨与思绪。在毕业论文完成之际，我愿将这四年的经历与感悟凝聚成文字，向求学路上给予我帮助的师长和亲友表达我最真挚的谢意。

师恩如海，深不可测。首先，我要特别感谢我的导师菩提教授。从初入大学时的懵懂无知，到如今能够独立完成毕业设计，菩老师始终是我前行路上的明灯。他不仅在学术上给予我悉心的指导，帮助我拓宽视野，提升能力，还在生活中给予我无微不至的关怀，让我感受到如家人般的温暖。在这次毕业设计的过程中，从选题到实验，从撰文到定稿，菩老师的全程指导让我受益匪浅。每一次对实验结果的精益求精，每一次对论文的反复修改，都让我深刻体会到菩老师在科研工作中的严谨态度和对学生的严格要求。在师门的四年时光里，菩老师不仅传授给我学术知识，更教会了我踏实、认真、负责、勤勉的品质，这些品质将伴随我一生，无论是在科研还是其他工作中，甚至在日常生活中。在此论文完成之际，我衷心感谢菩老师一路以来的教导、呵护与关怀。
  ]
    }
  ]

  pagebreak()
  align(center)[#text(size: 16pt, font: hei)[参考文献]]
  v(16pt)
  set text(size: 10.5pt)
  bibliography("references.bib", style: "gb-7714-2015-numeric", title:none)
}