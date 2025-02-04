# 💻 Connecting to Your Kubernetes Cluster from Your Computer

## 1. **Ensure `kubectl` is Installed**
If not installed, follow the official instructions:
- [Install `kubectl`](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

Verify installation:
```bash
kubectl version --client
```

## 2. **Configure the `kubeconfig` File**
The `kubeconfig` file contains all the necessary information for `kubectl` to connect to your Kubernetes cluster. Terraform has generated this file, but you need to place it correctly.

### **Option 1: Use the File Directly**
Use the Terraform-generated `kubeconfig` file by setting the `KUBECONFIG` environment variable:

```bash
export KUBECONFIG=./kubeconfig.yaml
```

### **Option 2: Move the File to `~/.kube/config`**
To use the default `kubectl` location, move the file to the `~/.kube` folder:

```bash
mkdir -p ~/.kube
cp ./kubeconfig.yaml ~/.kube/config
```

## 3. **Verify Cluster Connection**
Check your cluster connection:

```bash
kubectl get nodes
```

This should display a list of cluster nodes. If you see the nodes, you're successfully connected.

Example output:
```
NAME           STATUS   ROLES    AGE   VERSION
node-pool-1    Ready    <none>   5m    v1.27.5
node-pool-2    Ready    <none>   5m    v1.27.5
```

## 4. **Explore Your Cluster**
Some useful commands to get started:

- **View all resources in the cluster**:
  ```bash
  kubectl get all --all-namespaces
  ```

- **View available namespaces**:
  ```bash
  kubectl get namespaces
  ```

## 5. **Additional Tips**
- **Multiple Clusters**: Manage multiple cluster configurations:
  ```bash
  kubectl config get-contexts           # View all contexts
  kubectl config use-context <name>     # Switch to another cluster
  ```

- **Autocomplete**: Enable kubectl autocomplete in your terminal:
  ```bash
  echo 'source <(kubectl completion bash)' >> ~/.bashrc
  source ~/.bashrc
  ```

- **Kubernetes Dashboard**: Install the dashboard:
  ```bash
  kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml
  kubectl proxy
  ```
  Access in your browser:
  ```
  http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/
  ```