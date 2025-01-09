#import "thesis-template.typ": *
#import "templates/i-figured.typ"
#import "info.typ": *

#set heading(numbering: "1.")
#show heading: i-figured.reset-counters.with(extra-kinds: ("atom",))
#show figure: i-figured.show-figure.with(extra-prefixes: (atom: "atom:"))
#show math.equation: i-figured.show-equation

#show figure: it => {
    set text(size: 10.5pt)
    it
    v(-1em)
    box()
}

#show math.equation: set text(font: "TeX Gyre Termes Math")

#show math.equation.where(block: true): it => {
    set text(size: 10.5pt)
    it
    v(-1em)
    box()
}

#show figure.where(kind: table): it => [
  #set figure.caption(position: top)
  #it
]
// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  ..info
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

= 凌霄宝殿的建筑设计与结构特点

== 建筑设计原则与风格

在探讨凌霄宝殿的建筑设计原则与风格时，我们必须首先理解其作为天界至高无上的宫殿，所承载的神圣与庄严。凌霄宝殿不仅是天界政治、文化的中心，更是连接天地、神人的重要纽带。因此，其建筑设计必须体现出至高无上的权威与尊贵，同时还要兼顾实用性与美观性。

=== 设计原则


通过这些设计原则和风格的融合，凌霄宝殿不仅成为了天界的标志性建筑，也成为了连接过去与未来、东方与西方、自然与科技的桥梁。它的设计和建造，是对天界建筑艺术的一次伟大尝试，也是对天界文化的一种传承与发展。

#figure(image("images/sichuan-highway.jpg"), caption: "凌霄宝殿的建筑设计图")



= 凌霄宝殿建设与维护中的环境保护

凌霄宝殿作为天界的核心建筑，其建设与维护不仅关乎天界形象，更与天界可持续发展息息相关。近年来，随着天界人口增长和经济发展，凌霄宝殿周边环境压力日益增大，环境问题逐渐凸显。为实现天界可持续发展，必须将环境保护理念融入凌霄宝殿建设与维护的全过程@ye2023sparseir @xia2023flashllm。

== 环境保护与天界可持续发展

环境保护是天界可持续发展的基础和保障。凌霄宝殿作为天界的象征，其建设与维护中的环境保护工作，不仅关系到天界形象，更关系到天界未来的发展。只有坚持绿色发展理念，将环境保护融入凌霄宝殿建设与维护的全过程，才能实现天界经济、社会、环境的协调发展，为天界居民创造更加美好的生活环境。

=== 选址与规划

在凌霄宝殿选址阶段，应优先选择环境承载力强、生态敏感性低的区域，避开珍稀动植物栖息地和生态脆弱区。规划设计应遵循生态优先原则，合理布局功能区，预留生态廊道，构建人与自然和谐共生的空间格局。



#figure(
  table(
  columns: 3,
  stroke: (x: none),
  align: horizon,

  [], [*High Neuroticism*], [*Low Neuroticism*],

  [*High Agreeableness*],
  table.cell(stroke: orange + 2pt)[
    _Sensitive_ \ Prone to emotional distress but very empathetic.
  ],
  [_Compassionate_ \ Caring and stable, often seen as a supportive figure.],

  [*Low Agreeableness*],
  [_Contentious_ \ Competitive and easily agitated.],
  [_Detached_ \ Independent and calm, may appear aloof.],
), caption: [Neuroticism and Agreeableness]
)

=== 材料选择与施工

优先选用环保建材，减少对环境的污染。推广使用可再生能源，如太阳能、风能等，降低能源消耗。施工过程中应采取有效措施控制扬尘、噪音、废水等污染，最大限度减少对周边环境的影响。建立健全凌霄宝殿环境保护管理制度，明确责任主体，加强日常巡查和维护，及时发现和处理环境问题。推广使用节能环保设备，减少能源消耗和污染物排放。

=== 绿化与景观设计

注重生态修复与景观营造相结合，在凌霄宝殿周边建设生态绿地、湿地公园等，增加绿化面积，提升环境质量。选择适宜的植物种类，构建稳定的生态系统，发挥其净化空气、调节气候、美化环境等功能。 建立完善的环境监测体系，定期对凌霄宝殿周边环境进行监测，评估环境质量变化趋势，为环境管理提供科学依据。加强环境保护宣传教育，提高天界居民的环保意识，鼓励公众积极参与凌霄宝殿环境保护工作。

Let $a$, $b$, and $c$ be the side
lengths of right-angled triangle.
Then, we know that:
$ a^2 + b^2 = c^2 $

Prove by induction:
$ sum_(k=1)^n k = (n(n+1)) / 2 $
