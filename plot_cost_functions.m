function [] = plot_cost_functions(plot_title, x, functions_values, functions_legend, x_legend, y_legend)
    % PLOT_COST_FUNCTIONS - Plot multiple cost functions in the same figure.
    %
    %   PLOT_COST_FUNCTIONS(PLOT_TITLE, X, FUNCTIONS_VALUES, FUNCTIONS_LEGEND,
    %   X_LEGEND, Y_LEGEND) plots multiple cost functions using the specified
    %   inputs and legends.
    %
    %   Inputs:
    %     - PLOT_TITLE: Title for the plot.
    %     - X: The x-axis values.
    %     - FUNCTIONS_VALUES: A cell array containing the values of the cost
    %       functions to be plotted. Each cell corresponds to a different cost
    %       function.
    %     - FUNCTIONS_LEGEND: A cell array containing the legend labels for
    %       each cost function.
    %     - X_LEGEND: Label for the x-axis.
    %     - Y_LEGEND: Label for the y-axis.
    %
    %   Example usage:
    %     x = linspace(0, 10, 100);
    %     cost1 = x.^2;
    %     cost2 = x.^3;
    %     plot_cost_functions('Cost Functions Comparison', x, {cost1, cost2}, ...
    %       {'Cost 1', 'Cost 2'}, 'X-axis', 'Y-axis');

    figure;
    hold on;
    for i = 1:length(functions_values)
        fun_values = functions_values{i};
        fun_legend = functions_legend{i};
        plot(x, fun_values, '-o', 'DisplayName', fun_legend);
    end
    hold off;

    xlabel(x_legend);
    ylabel(y_legend);
    title(plot_title);
    grid on;
end

