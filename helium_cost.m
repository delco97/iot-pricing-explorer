function monthly_cost = helium_cost(devices, device_daily_payloads, payload_bytes)
    % HELIUM_COST - Calculate monthly cost for devices on Helium.
    %
    %   MONTHLY_COST = HELIUM_COST(DEVICES, DEVICE_DAILY_PAYLOADS, PAYLOAD_BYTES)
    %   calculates the monthly helium cost for a given number of devices,
    %   device daily payloads sent, and payload bytes.
    %
    %   Inputs:
    %     - DEVICES: Number of devices.
    %     - DEVICE_DAILY_PAYLOADS: Daily payload data sent by each device.
    %     - PAYLOAD_BYTES: Payload size in bytes for each device.
    %
    %   Output:
    %     - MONTHLY_COST: Monthly cost in euros.
    %
    %   Example usage:
    %     devices = 100;
    %     daily_payloads = 288 * ones(1, devices);
    %     payload_bytes = 12 * ones(1, devices);
    %     monthly_cost = helium_cost(devices, daily_payloads, payload_bytes);

    dc_eur_conversion_factor = 0.0000093;

    daily_dc_required_per_device = ceil((payload_bytes .* device_daily_payloads) / 24);

    monthly_cost = 30 * devices .* daily_dc_required_per_device * dc_eur_conversion_factor;
end
