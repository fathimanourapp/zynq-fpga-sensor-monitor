#include "xgpio.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "sleep.h"

#define ALERT_GPIO XPAR_XGPIO_0_BASEADDR

int main()
{
    XGpio alert;
    int val;

    XGpio_Initialize(&alert, ALERT_GPIO);

    XGpio_SetDataDirection(&alert, 1, 1);

    xil_printf("Smart Sensor Monitor Started\r\n");

    while(1)
    {
        val = XGpio_DiscreteRead(&alert, 1);

        xil_printf("Alert Status = %d\r\n", val);

        usleep(500000);
    }

    return 0;
}
