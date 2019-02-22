import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.css';

const initPicker = () => {
  const pickerElement = document.getElementById('booking_start_at');
  const disabledDateElement = document.getElementById('disabled-date');
  const disabledDate = disabledDateElement.dataset.disabledDate;


  if (pickerElement) {
    flatpickr(pickerElement, {
      dateFormat: "Y-m-d",
      disable: JSON.parse(disabledDate)

    });
  }
}

const initPickerEnd = () => {
  const pickerElement = document.getElementById('booking_end_at');
  const disabledDateElement = document.getElementById('disabled-date');
  const disabledDate = disabledDateElement.dataset.disabledDate;


  if (pickerElement) {
    flatpickr(pickerElement, {
      dateFormat: "Y-m-d",
      disable: JSON.parse(disabledDate)
    });
  }
}

export { initPicker };
export { initPickerEnd };
