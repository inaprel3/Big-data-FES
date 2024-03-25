library(DiagrammeR)
# Створення графічної схеми> grViz("
digraph {
  rankdir = LR
  node [shape = box, style = filled, fillcolor = 'lightblue', fontname = 'helvetica', fontsize = 12]  
  edge [color = 'black', arrowhead = normal, arrowsize = 1.5]+     
  subgraph cluster_0 {
    label = 'Model Selection'
    style = filled
    color = lightgrey
    Model_Selection [label = 'Model Selection', fillcolor = 'lightblue']}
  subgraph cluster_1 {
    label = 'Forecasting' 
    style = filled
    color = lightgrey
    Forecasting [label = 'Forecasting', fillcolor = 'lightblue']}     
  subgraph cluster_2 {
    label = 'Model Development'
    style = filled
    color = lightgrey
    Model_Development [label = 'Model Development', fillcolor = 'lightblue']}
  subgraph cluster_3 {
    label = 'Usage of Models'
    style = filled
    color = lightgrey
    Usage_of_Models [label = 'Usage of Models', fillcolor = 'lightblue']
  }    
  Model_Selection -> Model_Development
  Model_Development -> Usage_of_Models
  Model_Selection -> Forecasting
  Forecasting -> Usage_of_Models}")
