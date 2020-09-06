function plotdata(X, y)
pos = find(y == 1); neg = find(y == 0);
plot(X(pos, 1), X(pos, 2), 'kx','LineWidth', 1, 'MarkerSize', 7)
hold on;
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'b', 'MarkerSize', 7)
hold off;

end
