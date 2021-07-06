
exports.seed = function (knex) {
  // Deletes ALL existing entries
  return knex('airlines').del()
    .then(function () {
      // Inserts seed entries
      return knex('airlines').insert([
        {
          name: "Spirit",
        },
        {
          name: "Lufthansa",
        },
        {
          name: "Delta",
        },
        {
          name: "Southwest",
        }
      ]);
    });
};
