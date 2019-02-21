import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.css';

const initPicker = () => {
  const pickerElement = document.getElementById('booking_start_at');


  if (pickerElement) {
    flatpickr(pickerElement, {
      dateFormat: "Y-m-d",
      disable: [
          {
              from: "2010-04-01",
              to: Date.now()
          }
        ]
    });
  }
}

const initPickerEnd = () => {
  const pickerElement = document.getElementById('booking_end_at');


  if (pickerElement) {
    flatpickr(pickerElement, {
      dateFormat: "Y-m-d",
      disable: [
          {
              from: "2010-04-01",
              to: Date.now()
          }
        ]
    });
  }
}

export { initPicker };
export { initPickerEnd };
