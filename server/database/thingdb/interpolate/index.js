const compute_values = require('./compute_values');
const apply_side_effects = require('./apply_side_effects');
const aggregate_events = require('./aggregate_events');
const compute_views = require('./compute_views');

module.exports = {
    aggregate_events,
    compute_views,
    compute_values,
    apply_side_effects,
};
