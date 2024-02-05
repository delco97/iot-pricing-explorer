function monthly_cost = things_mobile_cost(devices, device_daily_payloads, payload_bytes)
    % THINGS_MOBILE_COST - Calculate monthly cost for mobile devices on Things Mobile.
    %
    %   MONTHLY_COST = THINGS_MOBILE_COST(DEVICES, DEVICE_DAILY_PAYLOADS,
    %   PAYLOAD_BYTES) calculates the monthly cost for a given number of mobile
    %   devices, daily payload data, and payload size.
    %
    %   Inputs:
    %     - DEVICES: Number of mobile devices.
    %     - DEVICE_DAILY_PAYLOADS: Daily payload data for each mobile device.
    %     - PAYLOAD_BYTES: Payload size in bytes for each mobile device.
    %
    %   Output:
    %     - MONTHLY_COST: Monthly cost in euros.
    %
    %   Example usage:
    %     devices = 50;
    %     daily_payloads = 288 * ones(1, devices);
    %     payload_bytes = 12 * ones(1, devices);
    %     monthly_cost = things_mobile_cost(devices, daily_payloads, payload_bytes);
    %
    daily_bytes_per_device = device_daily_payloads .* payload_bytes;
    daily_MB_per_device = daily_bytes_per_device / 10^6;

    monthly_MB_per_device = daily_MB_per_device * 30;
    monthly_MB_per_device(monthly_MB_per_device <= 5) = 5;

    monthly_cost = (devices .* (monthly_MB_per_device * 0.1 + 0.25)) + 3;
end