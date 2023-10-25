<script>
  let name = ''
  let email = ''
  let password = ''
  const register = () => {
    alert('注册成功');
  }
</script>

<div class="user-page">
  <h2>新用户注册</h2>
  <div class="register-container">
    <input type="text" placeholder="姓名" bind:value={name} />
    <input type="email" placeholder="邮箱" bind:value={email} />
    <input type="password" placeholder="密码" bind:value={password} />
    <button on:click={register}>注册</button>
  </div>
</div>

<style>
  .register-container {
    max-width: 400px;
    margin: auto;
    padding: 20px;
    border-radius: 8px;
    background-color: #f9f9f9;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }
  input {
    background-color: #f9f9ff;
  }
  input, button {
    width: 90%;
    padding: 10px;
    margin-bottom: 10px;
    border-radius: 4px;
    border: 1px solid #ddd;
  }
  button {
    background-color: #bbb6ac;
    color: white;
    cursor: pointer;
  }
  button:hover {
    background-color: #bbafaf;
  }
</style>
