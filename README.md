# Enabling Experimentation Workshop

This workshop will give you a hands on experience with enabling quick experimentation using ephemeral
environments in a pull request workflow. There are multiple ways to achieve this but in this workshop
we will use a declarative method that involves ArgoCD, Kubernetes, GitHub and vcluster.

## Requirements

You will only require a working GitHub account and a browser and internet access.

# Workshop Part 1 Application Deployment

1. In your browser navigate to https://github.com/rio/enabling-experimentation-workshop and star it.
2. Create a new branch with your GitHub username as the branch name.
3. In that branch open the file `podinfo/preview/kustomization.yaml`.
4. Edit the file and change the `newTag` to `6.4.0`.
5. Commit it to your branch.
6. Create a pull request to the main branch using your branch.
7. Once the `All checks have passed` block appears, click the `Show all checks` button next to it.
8. Click the `Details` link next to the `app/...` check.
9. Watch the cuttlefish clap.
10. Navigate back to your branch and update the tag again. This time to `6.4.1`.
11. Commit it and watch the cuttlefish again.
12. One final time lets go back to that `podinfo/preview/kustomization.yaml` file and this time uncomment the lines commented out under the `configMapGenerator`.
11. Commit it and watch the cuttlefish again. After a while the background should change into a nice Fullstaq purple.

# Workshop Part 2 Work Environment

1. Click the `Details` link next to the `app/...` check again. Add `code.` infront of the URL.
1. You will be prompted for a password. For your convenience it is set to the commit has of your last commit. Navigate to the commits tab in your pull request and click the copy button. Note that you need the large version of your commit not the short one that is visible in this ui.
1. Click the `Yes I trust the authors button.`
1. Optionally change the color theme to something you like in the bottom left corner by clicking on the cog wheel then navigate to `Themes -> Color Theme`.
1. Open the command pallete by pressing `F1` or by navigating to the hamburger menu and `View -> Command Pallete`.
1. Type `clone` and select the `Git: Clone` option.
1. Type in the workshop repository url: `https://github.com/rio/enabling-experimentation-workshop.git`
1. Wait until it's done cloning and click `Open` when asked.
1. Open a new terminal by clicking the hamburger menu in the top left and navigating to `Terminal -> New Terminal` or through the command pallete.
1. Execute the shell script at `tasks/setup-task.sh` and wait for it to finish.
1. Checkout your new environment by running `kubectl get pods,svc,ingress -A`.
1. Poke your cuttlefish by running `curl podinfo.podinfo:9898`. Keep hitting it a couple of times and see it load balance between the two pods.
1. Deploy a new webserver and port-forward it using `task deploy-webserver`. Wait until there's a popup notifying your that a new port is forwarded and click open.

# Workshop Part 3 Infrastucture

1. Lets see how our cuttlefish deals with a service mesh. Install linkerd by running `task linkerd-install`.
1. Inject the linkerd proxy into the cuttlefish by running `task linkerd-inject`.
1. Lets checkout all of the edges between systems that linkerd knows about by running `task linkerd-edges`.
1. Lets see the http paths that are being called by running `task linkerd-top`.
1. Add `/headers` to the url of the cuttlefish to let it return the headers that it saw and see that path show up in the linkerd output.

# Workshop Part 4 (optional) Clusters in Clusters in Clusters

1. Open a terminal and create a vcluster by running `vcluster create test-cluster`.
1. Once it starts forwarding a connection open a new terminal and run `kubectl get pods -A` again.
1. Terminate the `vcluster create` command and run `kubectl get pods -A` one last time.
1. Delete the vcluster by running `vcluster delete test-cluster`

# Workshop Final Part

1. Close your pull request and watch it all disappear.
