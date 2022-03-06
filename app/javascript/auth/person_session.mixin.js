import {mapState, mapActions } from 'vuex';
import { GET_SESSION_USER }  from "../store/person_session.store";

export const personSessionMixin = {
  computed: {
    ...mapState({
      currentUser: 'user'
    }),
    loggedIn() {
      return !!this.currentUser.id
    },
    currentUserIsAdmin() {
      // TODO
      return !!Object.values(this.currentUser.convention_roles).find(r => r.role === "admin")
    }
  },
  methods: {
    ...mapActions({
      fetchSession: GET_SESSION_USER
    })
  },
  mounted() {
    // fetch the current session on mount !!!
    this.fetchSession();
  }
}

export default personSessionMixin;
