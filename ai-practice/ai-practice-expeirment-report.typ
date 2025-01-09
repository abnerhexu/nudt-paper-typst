// picture ./images/CLIP.png from https://github.com/openai/CLIP/blob/main/CLIP.png
#let tnr = "Times New Roman"
#let tnr_fsong = (tnr, "FangSong")
#let tnr_song = (tnr, "SimSun")
#let tnr_hei = (tnr, "SimHei")

#let CourseName = "人工智能综合实践"
#let Class = "计算机科学与技术"
#let Date = datetime.today().display("[year].[month].[day]")
#let Name = "孙悟空"
#let StudentID = "123456789"
#let Partner = "六耳猕猴"
#let ExperimentName = "凌霄宝殿建设与维护关键技术研究"

#let python_CLIP = [
```python
import torch
import clip
from PIL import Image

device = "cuda" if torch.cuda.is_available() else "cpu"
model, preprocess = clip.load("ViT-B/32", device=device)

image = preprocess(Image.open("CLIP.png")).unsqueeze(0).to(device)
text = clip.tokenize(["a diagram", "a dog", "a cat"]).to(device)

with torch.no_grad():
    image_features = model.encode_image(image)
    text_features = model.encode_text(text)
    
    logits_per_image, logits_per_text = model(image, text)
    probs = logits_per_image.softmax(dim=-1).cpu().numpy()

print("Label probs:", probs)  # prints: [[0.9927937  0.00421068 0.00299572]]
```
]

#let Purpose_and_Requirements = [
  （本次实验所涉及并要求掌握的知识点）\
]

#let ExperimentEnvironment = [
  （本次实验所使用的平台和相关软件）\
]

#let ExperimentContent = [
  （按照本组完成的实现内容和方式，对照实验要求描述，并自评是否达到实验要求）\

]

#let ExperimentProcess = [
  （适当的形式表达算法设计思想与算法实现步骤，注意尽量形式化表达，鼓励使用流程图、伪代码等形式）\

  #figure(
    image("../images/CLIP.png", height: 10em),
    caption: "CLIP",
  ) <CLIP>

  #python_CLIP 

]

#let Debug_and_Result = [
  （详细记录在调查过程中出现的问题及解决方法。记录实验执行的结果，对实验结果进行分析，对于效果满意或者欠佳的原因进行分析）\
]

#let Conclusion = [
  （对本次实验的收获和心得体会进行总结）\
]

#let Appendix = [
  （代码 readme 文件，包括源程序清单，以及每个文件的内容简介和如何运行的介绍）\
]

#let details = (
  ([ 实\ 验\ 目\ 的\ 及\ 要\ 求 ], Purpose_and_Requirements),
  ([ 实\ 验\ 环\ 境 ], ExperimentEnvironment),
  ([ 实\ 验\ 内\ 容 ], ExperimentContent),
  ([ 算\ 法\ 描\ 述\ 及\ 实\ 验\ 步\ 骤 ], ExperimentProcess),
  ([ 调\ 试\ 过\ 程\ 及\ 实\ 验\ 结\ 果 ], Debug_and_Result),
  ([ 总\ 结 ], Conclusion),
  ([ 附\ 录 ], Appendix),
)

#let infos = (
  ([ 课程名称 ], CourseName),
  ([ 班级 ], Class),
  ([ 实验日期 ], Date),
  ([ 姓名 ], Name),
  ([ 学号 ], StudentID),
  ([ 队友 ], Partner),
)


#let collect_info_blocks(infos: infos) = {
  let info_blocks = ()
  for (header, value) in infos {
    let b1 = block(stroke: (thickness:0.5pt), height: 100%)[ #header ]
    let b2 = block(stroke: (thickness:0.5pt), height: 100%)[ #value ]
    info_blocks.push(b1)
    info_blocks.push(b2)
  }
  let b1 = block(stroke: (thickness:0.5pt), height: 100%)[ 实验名称 ]
  let b2 = grid.cell(stroke: (thickness:0.5pt), colspan: 5, block(height: 100%)[ #ExperimentName ])
  info_blocks.push(b1)
  info_blocks.push(b2)
  return info_blocks
}

#let collect_detailed_blocks(details: details) = {
  let detailed_blocks = ()
  
  for (header, description) in details {
    let header_size = measure(header)
    let description_size = measure(description)

    let description_children_num = description.children.len()
    let lines = int((description_children_num - 1) / 3)

    let min_height = calc.max(header_size.height, description_size.height) + 4em + 1em * lines
    

    let header_block = block(stroke: (thickness:0.5pt), 
                            height: min_height, 
                            inset: 5pt, 
                            breakable: true)[ #header ]

    let description_block = grid.cell(
        colspan: 5,
        align: (left + top),
        breakable: true,
        block(stroke: (thickness:0.5pt), 
              height: min_height, 
              inset: 5pt, 
              breakable: true)[ #description ]
      )
    detailed_blocks.push(
      header_block
    )
    detailed_blocks.push(
      description_block
    )
  }

  return detailed_blocks
}

#let expeirment_report() = context {
  show heading: it => [
    #set align(center)
    #set text(font: tnr_song, size: 18pt)
    #emph(it.body)
  ]
  set block(width: 100%, breakable: true)
  set text(font: tnr_song)

  let info_blocks = collect_info_blocks()
  let detailed_blocks = collect_detailed_blocks()
  let info_block_height = 1.5em

  [ = 实验报告 ]
  grid(
    columns: (5em, 1fr, 4em, 1fr, 5em, 1fr),
    align: (center + horizon),
    rows: (info_block_height, info_block_height, info_block_height, auto),
    ..{
      info_blocks + detailed_blocks
    }
  )
}

#expeirment_report()
