
exports.seed = function(knex) {
  // Deletes ALL existing entries
  return knex('airlines_destinations').del()
    .then(function () {
      // Inserts seed entries
      return knex('airlines_destinations').insert([
        {
          airline: "Spirit",
          destination: "New Zealand"
        },
        {
          airline: "Spirit",
          destination: "Scotland"
        },
        {
          airline: "Lufthansa",
          destination: "Tristan da Cunha"
        },
        {
          airline: "Lufthansa",
          destination: "Scotland"
        },
        {
          airline: "Lufthansa",
          destination: "Thailand"
        },
        {
          airline: "Delta",
          destination: "Thailand"
        },
        {
          airline: "Delta",
          destination: "Minnesota"
        },
        {
          airline: "Delta",
          destination: "England"
        },
        {
          airline: "Delta",
          destination: "Scotland"
        },
        {
          airline: "Southwest",
          destination: "New Zealeand"
        },
        {
          airline: "Southwest",
          destination: "Tristan de Cunha"
        },
        {
          airline: "DeSouthwestlta",
          destination: "Minnesota"
        },
        ]);
    });
};
