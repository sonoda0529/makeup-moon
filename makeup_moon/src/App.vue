  <script setup lang="ts">
  // This starter template is using Vue 3 <script setup> SFCs
  // Check out https://vuejs.org/api/sfc-script-setup.html#script-setup
  
import {ref} from "vue"


  const isActive = ref(false)
  function toggleDrawer(){

    isActive.value = !isActive.value
  }
  
  </script>

<template>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<div class="container">
  <div class="navigation"
  :class="{active: isActive}">

   <ul>
     <li>
      <a href="#">
         <span class="icon"><span class="fa material-symbols-outlined">
home
</span></span>
         <span class="title">Home</span>
      </a>
     </li>
   <li>
      <a href="#">
         <span class="icon"><span class="fa material-symbols-outlined">
person
</span></span>
         <span class="title">Profile</span>
      </a>
     </li>
   <li>
      <a href="#">
         <span class="icon"><span class="fa material-symbols-outlined">
chat_bubble
</span></span>
         <span class="title">Message</span>
      </a>
     </li>
   <li>
      <a href="#">
         <span class="icon"><span class="fa material-symbols-outlined">
help
</span></span>
         <span class="title">Help</span>
      </a>
     </li>
   <li>
      <a href="#">
         <span class="icon"><span class="fa material-symbols-outlined">
bookmark
</span></span>
         <span class="title">Setting</span>
      </a>
     </li>
   <li>
      <a href="#">
         <span class="icon"><span class="fa material-symbols-outlined">
lock
</span></span>
         <span class="title">Password</span>
      </a>
     </li>
   <li>
      <a href="#">
         <span class="icon"><span class="fa material-symbols-outlined">
upload
</span></span>
         <span class="title">Sign Out</span>
      </a>
     </li>
   </ul>
  
  </div>
  <div 
  @click="toggleDrawer"
  class="toggle"
  :class="{active: isActive}">
  </div>
</div>

</template>

<style>
body
{
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background: #6843d1;
}

.container
{
  position: relative;
}
.container .navigation
{
  position: relative;
width: 60px;
height: 420px;
background: #fff;
border-radius: 10px;
overflow: hidden;
box-shadow: 0 5px 15px rgba(0,0,0,0.2);
transition: 0.5s;
}
.container .navigation ul
{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
}
.container .navigation ul li
{
  position: relative;
  list-style: none;
  width: 100%;
}
.container .navigation ul li:hover
{
  background: #efefef;
}
.container .navigation ul li a
{
  position: relative;
  display:block;
  width: 100%;
  display: flex;
  text-decoration: none;
  color: #6843cf;
  font-weight: 500;
}
.container .navigation ul li a .icon
{
  position: relative;
  display: block;
  min-width: 80px;
  height: 60px;
  line-height: 60px;
  text-align: center;
}
.container .navigation ul li a .icon .fa
{
  font-size: 24px;
}
.container .navigation ul li a .title
{
  position: relative;
  display: block;
  height: 60px;
  line-height: 60px;
  white-space: nowrap;
}
.toggle
{
  position: absolute;
  top: calc(50% - 20px);
  right: -20px;
  width: 40px;
  height: 40px;
  background: #f5f5f5;
  cursor: pointer;
  border: 5px solid #6843d1;
  border-radius: 50%;
}
.toggle::before
{
  content:'\e5e1';
  font-family: fontAwesome;
  position: absolute;
  width: 100%;
  height: 100%;
  line-height: 30px;
  text-align: center;
  font-size: 16px;
  color:#6843d1
}
.toggle.active::before
{
content:'\e5e1';
}
 .navigation.active
{
  width: 300px;
}


</style>
