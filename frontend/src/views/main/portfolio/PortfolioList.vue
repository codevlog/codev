<template>
    <div>
        <div class="searchLoc">
            <searchBar></searchBar>
        </div>
        <div class="writebtn">
            <button>작성하기</button>
        </div>
        <div class="portfolio-container">
            <div v-for="i in portfolios.length > limits ? limits : portfolios.length" :key="i.id" @click="showModal = true">
                <pCard :title="portfolios[i - 1].title" :body="portfolios[i - 1].body"
                           :imgSrc="portfolios[i - 1].imgSrc" :link="portfolios[i - 1].link"></pCard>
            </div>
            <modal v-if="showModal" @close="showModal = false">
                <!--
                  you can use custom content here to overwrite
                  default content
                -->
                <img class="slot-img" :src="portfolios[0].imgSrc" alt="" slot="imgArea">
                <h3 slot="header">{{portfolios[0].title}}</h3>
                <p slot="body">{{portfolios[0].body}}</p>
            </modal>
        </div>

        <div class="loadbtn">
            <button @click="loadMorePortfolios()" v-if="loadMore"> 더 보기</button>
        </div>

    </div>
</template>

<script>
    import pCard from '../../../components/pCard'
    import searchBar from '../../../components/searchBar'
    import modal from '../../../components/modal'

    export default {
        name: 'PortfolioList',
        props: {
            limits: {type: Number, default: 4},
            loadMore: {type: Boolean, default: false},
        },
        components: {
            // eslint-disable-next-line vue/no-unused-components
            pCard,
            searchBar: searchBar,
            modal
        },
        data() {
            return {
                portfolios: [
                    {
                        id: 1,
                        title: 'Title1',
                        body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                        imgSrc: 'https://picsum.photos/800/800',
                        link: ''
                    },
                    {
                        id: 2,
                        title: 'Title2',
                        body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                        imgSrc: 'https://picsum.photos/400/400',
                        link: ''
                    },
                    {
                        id: 3,
                        title: 'Title3',
                        body: 'with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.f',
                        imgSrc: 'https://picsum.photos/400/400',
                        link: '',
                    },
                    {
                        id: 4,
                        title: 'Title4',
                        body: 'lorem ipsLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.um slsjdnflasjdfnsjkdfnlkajflasdafsdfkasndjklafsdnljkflasndfjklnasdjklfnlasdfjlasdf',
                        imgSrc: 'https://picsum.photos/400/400',
                        link: ''
                    },
                    {
                        id: 5,
                        title: 'Title5',
                        body: 'lorem ipLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.sum slsjdnflasjdfnsjkdfnlkajflasdafsdfkasndjklafsdnljkflasndfjklnasdjklfnlasdfjlasdf',
                        imgSrc: 'https://picsum.photos/400/400',
                        link: '',
                    },
                    {
                        id: 6,
                        title: 'Title6',
                        body: 'lorem ipLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.sum slsjdnflasjdfnsjkdfnlkajflasdafsdfkasndjklafsdnljkflasndfjklnasdjklfnlasdfjlasdf',
                        imgSrc: 'https://picsum.photos/400/400',
                        link: '',
                    },
                    {
                        id: 7,
                        title: 'Title7',
                        body: 'lorem ipLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.sum slsjdnflasjdfnsjkdfnlkajflasdafsdfkasndjklafsdnljkflasndfjklnasdjklfnlasdfjlasdf',
                        imgSrc: 'https://picsum.photos/400/400',
                        link: '',
                    },
                    {
                        id: 8,
                        title: 'Title8',
                        body: 'lorem ipLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.sum slsjdnflasjdfnsjkdfnlkajflasdafsdfkasndjklafsdnljkflasndfjklnasdjklfnlasdfjlasdf',
                        imgSrc: 'https://picsum.photos/400/400',
                        link: '',
                    },
                    {
                        id: 9,
                        title: 'Title9',
                        body: 'lorem ipLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.sum slsjdnflasjdfnsjkdfnlkajflasdafsdfkasndjklafsdnljkflasndfjklnasdjklfnlasdfjlasdf',
                        imgSrc: 'https://picsum.photos/400/400',
                        link: '',
                    },

                ],
                showModal: false,
            }
        },
        computed: {},
        created() {
            window.scrollTo(0,0)

        },
        mounted() {
        },
        methods: {
            loadMorePortfolios () {
                this.limits += 4;
            },
            sayhi () {
                console.log('hi')
            }
        },
    }
</script>

<style lang="scss" scoped>
    .slot-img {
        width: 100%;
    }

    .portfolio-container {
        display: grid;
        grid-template-rows: repeat(1, 400px [row-start]);
        grid-template-columns: repeat(4, 20vw [col-start]);
        grid-gap: 10px 10px;
        justify-content: space-evenly;
        /*justify-items: center;*/
        padding-top: 20px;
        background-color: white;
    }

    .searchLoc {
        height: 200px;
    }

    .loadbtn {
        display: flex;
        justify-content: center;
        align-items: center;
        border: 1px solid red;
        height: 10vh;
    }

    .writebtn {
        display: flex;
        justify-content: center;
        align-items: center;
        border: 1px solid green;
        height: 10vh;
    }

    @media (max-width: 978px) {
        .portfolio-container {
            display: grid;
            grid-template-rows: repeat(1, 400px [row-start]);
            grid-template-columns: repeat(3, 30vw [col-start]);
            grid-gap: 10px 10px;
            justify-content: space-evenly;
            /*justify-items: center;*/
            padding-top: 50px;
            background-color: white;
        }
    }

    @media (max-width: 768px) {
        .portfolio-container {
            display: grid;
            grid-template-rows: repeat(1, 400px [row-start]);
            grid-template-columns: repeat(2, 40vw [col-start]);
            grid-gap: 10px 10px;
            justify-content: space-evenly;
            /*justify-items: center;*/
            padding-top: 50px;
            background-color: white;
        }
    }
</style>
