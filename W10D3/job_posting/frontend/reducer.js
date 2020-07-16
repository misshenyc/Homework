import { selectLocation} from './actions';

//testing only
window.reducer = reducer;

const initialState = {
  city: "Please Select", 
  jobs: []
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case 'SWITCH_LOCATION':
      return {
        city: action.city,
        jobs: action.jobs
      };
    default:
      return state;
  }
};



export default reducer;
