<template>
<makeupMoonHeader />


</template>





<script lang="ts">
/* 

ライフサイクルの種類

https://v3.ja.vuejs.org/guide/composition-api-lifecycle-hooks.html

	onMounted
	onBeforeUpdate
	onUpdated
 	onBeforeUnmount
 	onUnmounted
	onErrorCaptured
	onRenderTracked
	onRenderTriggered
	onActivated
	onDeactivated

*/
import {defineComponent} from "vue"
import makeupMoonHeader from "./components/makeupMoonHeader.vue" 



export default defineComponent({
name:"App",
components: {makeupMoonHeader},

setup() {
    console.log("ss")
}

})


// This starter template is using Vue 3 <script setup> SFCs
// Check out https://vuejs.org/api/sfc-script-setup.html#script-setup
</script>


<style>
#app {
display: flex;
flex-direction: column;
align-items: center;
}
#app :not(header) {
    max-width: 1280px;
} 
</style>
