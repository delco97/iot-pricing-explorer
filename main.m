close all;

% Dragino
devices = [1:1000];
payload_bytes = 12 * ones(size(devices));
device_daily_payloads = 288 * ones(size(payload_bytes));
monthly_helium_cost = helium_cost(devices, device_daily_payloads, payload_bytes);
monthly_things_mobile_cost = things_mobile_cost(devices, device_daily_payloads, payload_bytes);
plot_cost_functions( ...
    'Monthly cost - devices: [1:1000], device\_daily\_payloads: 288, payload\_bytes: 12', ...
    devices, ...
    {monthly_helium_cost, monthly_things_mobile_cost}, ...
    {'Helium Cost', 'Things Mobile Cost'}, ...
    'Devices', ...
    'Monthly Cost (EUR)' ...
);


% Worst case scenario
devices = [1:1000];
payload_bytes = 241 * ones(size(devices));
device_daily_payloads = 86400 * ones(size(payload_bytes));
monthly_helium_cost = helium_cost(devices, device_daily_payloads, payload_bytes);
monthly_things_mobile_cost = things_mobile_cost(devices, device_daily_payloads, payload_bytes);
plot_cost_functions( ...
    'Monthly cost - devices: [1:1000], device\_daily\_payloads: 86400, payload\_bytes: 241', ...
    devices, ...
    {monthly_helium_cost, monthly_things_mobile_cost}, ...
    {'Helium Cost', 'Things Mobile Cost'}, ...
    'Payload Bytes', ...
    'Monthly Cost (EUR)' ...
);