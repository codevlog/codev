<template>
    <div>
        <button id="show-modal" @click="showModal = true">Show Modal</button>
        <!-- use the modal component, pass in the prop -->
        <modal v-if="showModal" @close="showModal = false">
            <!--
              you can use custom content here to overwrite
              default content
            -->
            <h3 slot="header">custom header</h3>
        </modal>
    </div>
</template>

<script>
    import modal from '../../../../components/modal'
    export default {
        name: "PortfolioDetail",
        components: {
            modal
        },
        data () {
            return {
                showModal: false
            }
        }
    }
</script>

<style scoped>

</style>