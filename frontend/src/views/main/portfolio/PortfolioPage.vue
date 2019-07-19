<template>
    <div>
        <PortfolioList :limits="4" :load-more="true"></PortfolioList>
    </div>
</template>

<script>
    import PortfolioList from './PortfolioList'

    export default {
        name: "PortfolioPage",
        components: {
            PortfolioList
        }
    }
</script>

<style scoped>

</style>