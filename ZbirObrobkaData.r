library(DiagrammeR)
grViz("digraph {
    node [shape = box, style = filled, fillcolor = 'lightcyan', fontname = 'helvetica', fontsize = 12]
    edge [color = 'black', arrowhead = normal, arrowsize = 1.5]
    rankdir = LR    
    subgraph cluster_0 {
        label = 'Data Collection and Processing'
        style = filled
        color = lightgrey
        Data_Collection [label = 'Data Collection', fillcolor = 'lightblue']
        Data_Processing [label = 'Data Processing', fillcolor = 'lightblue']}
    subgraph cluster_1 {
        label = 'Analysis and Visualization'
        style = filled
        color = lightgrey      
        Data_Analysis [label = 'Data Analysis', fillcolor = 'lightcoral']
        Data_Visualization [label = 'Data Visualization', fillcolor = 'lightcoral']}    
    subgraph cluster_2 {
        label = 'Data Storage'
        style = filled
        color = lightgrey
        Data_Storage [label = 'Data Storage', fillcolor = 'lightyellow']}    
    Data_Collection -> Data_Processing    Data_Processing -> Data_Analysis
    Data_Analysis -> Data_Visualization    Data_Visualization -> Data_Storage
  }")
