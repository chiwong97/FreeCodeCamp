import numpy as np
import pandas as pd

col_names = ['Title', 'Air date', 'Production code', 'Season', 'Number in season',
             'Number in series', 'US viewers (million)', 'Views', 'IMDB rating']

filepath = 'files/simpsons-episodes.tsv'

# use sep='\t'

simpsons = pd.read_csv(sep='\t',
                       # INCORRECT: for tsv files, need to include parameter encoding='UTF-8',
                       names=col_names,
                       usecols=['Title', 'Air date', 'Production code', 'IMDB rating'], 
                       skiprows=4,
                       index_col=[2], # or just use index_col='Production code'
                       na_values='no_val',
                       parse_dates=[1]) # or just use parse_dates='Air date'



             
                          