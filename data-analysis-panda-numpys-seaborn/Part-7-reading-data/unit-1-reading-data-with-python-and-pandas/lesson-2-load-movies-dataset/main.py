import numpy as np
import pandas as pd

column_names = ['color', 'director_name', 'num_critic_for_reviews', 'duration',
                'gross', 'movie_title', 'num_user_for_reviews',	'country',
                'cotent_rating', 'budget', 'title_year', 'imdb_score', 'genre']

filepath = 'files/movies.csv'

movies = pd.read_csv(filepath, header=None, names=column_names, sep='|', na_values='?', skiprows=3)
