'use strict';

const { Superhero } = require('../models');

// DON'T SPEND ALL YOUR TIME MAKING REAL SEED DATA!!!
// Try to just spend only 5 minutes to create the seed data for testing
// You do not need to put in real superhero data as values! The data values
  // just need to make sense based from the migration and model files.

const validSuperheros = [
  // Your code here
  {
    name: 'JOE SWANSON',
    alias: 'super dude',
    affiliation: 'X-Men',
    heightCm: '150',
    isMutant: true,
    race: 'human',
    universe: 'Marvel',
    releaseYear: 2020,
  },
  {
    name: 'DAVID',
    alias: 'Cohort Hero',
    affiliation: 'X-Men',
    heightCm: 184,
    isMutant: true,
    race: 'human',
    universe: 'Marvel',
    releaseYear: 1990,
  },
  {
    name: 'BATMAN',
    alias: 'Bruce Wayne',
    affiliation: 'Justice League',
    heightCm: 187,
    isMutant: false,
    race: 'human',
    universe: 'DC',
    releaseYear: 1939,
  },
  {
    name: 'SUPERMAN',
    alias: 'Clark Kent',
    affiliation: 'Justice League',
    heightCm: 191,
    isMutant: false,
    race: 'kryptonian',
    universe: 'DC',
    releaseYear: 1938,
  },
  {
    name: 'SPIDERMAN',
    alias: 'Peter Parker',
    affiliation: 'Avengers',
    heightCm: '180',
    isMutant: false,
    race: 'human',
    universe: 'Marvel',
    releaseYear: 1992,
  }

];

module.exports = {
  async up (queryInterface, Sequelize) {
    try {
      await Superhero.bulkCreate(validSuperheros, {
        validate: true,
      });
    } catch (err) {
      console.log(err);
      throw err;
    }
  },

  async down (queryInterface, Sequelize) {
    for (let superheroInfo of validSuperheros) {
      try {
        await Superhero.destroy({
          where: superheroInfo
        });
      } catch (err) {
        console.log(err);
        throw err;
      }
    }
  },
  // DO NOT MODIFY BELOW (for testing purposes):
  validSuperheros,
};
