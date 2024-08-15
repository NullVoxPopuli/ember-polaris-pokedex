import Model, { attr } from '@ember-data/model';

/**
 * Data:
 * {
"id": 1,
"name": {
"english": "Bulbasaur",
"japanese": "フシギダネ",
"chinese": "妙蛙种子",
"french": "Bulbizarre"
},
"type": [
"Grass",
"Poison"
],
"base": {
"HP": 45,
"Attack": 49,
"Defense": 49,
"Sp. Attack": 65,
"Sp. Defense": 65,
"Speed": 45
},
"species": "Seed Pokémon",
"description": "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun’s rays, the seed grows progressively larger.",
"evolution": {
"next": [
[
"2",
"Level 16"
]
]
},
"profile": {
"height": "0.7 m",
"weight": "6.9 kg",
"egg": [
"Monster",
"Grass"
],
"ability": [
[
"Overgrow",
"false"
],
[
"Chlorophyll",
"true"
]
],
"gender": "87.5:12.5"
},
"image": {
"sprite": "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/sprites/001.png",
"thumbnail": "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/thumbnails/001.png",
"hires": "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/hires/001.png"
}
},
 */

export default class PokemonModel extends Model {
  @attr declare name: { english: string; japanese: string; chinese: string; french: string };
}
