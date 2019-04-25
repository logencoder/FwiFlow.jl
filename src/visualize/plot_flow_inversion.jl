using DelimitedFiles
using PyPlot
using PyCall
mpl = pyimport("matplotlib2tikz")

close("all")
loss = readdlm("../flow_fit_results/loss.txt")
semilogy(loss[:,2], label="loss")
xlabel("Iteration")
ylabel("Loss")
legend()
savefig("loss.png")
mpl.save("loss.tex")

close("all")
figure()
subplots_adjust(wspace=0.4)
subplot(221)
K = readdlm("../flow_fit_results/K1.txt")
imshow(K, vmin=20, vmax=100)
colorbar()
subplot(222)
K = readdlm("../flow_fit_results/K33.txt")
imshow(K, vmin=20, vmax=100)
colorbar()
subplot(223)
K = readdlm("../flow_fit_results/K66.txt")
imshow(K, vmin=20, vmax=100)
colorbar()
subplot(224)
K = readdlm("../flow_fit_results/K100.txt")
imshow(K, vmin=20, vmax=100)
colorbar()
savefig("K.png")
savefig("K.pdf")
