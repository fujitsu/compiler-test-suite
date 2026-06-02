#include <stdlib.h>
unsigned char v3 (signed short, signed int);
unsigned char (*v4) (signed short, signed int) = v3;
extern signed int v5 (unsigned short, unsigned int);
extern signed int (*v6) (unsigned short, unsigned int);
extern signed int v7 (unsigned char, signed int);
extern signed int (*v8) (unsigned char, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned char, unsigned short, signed int);
extern unsigned int (*v12) (unsigned char, unsigned short, signed int);
signed short v13 (signed short, signed char, unsigned int, signed char);
signed short (*v14) (signed short, signed char, unsigned int, signed char) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned int v19 (signed int, unsigned char);
extern unsigned int (*v20) (signed int, unsigned char);
extern signed int v21 (signed int, signed short);
extern signed int (*v22) (signed int, signed short);
extern signed short v23 (signed char, unsigned short, signed short, unsigned short);
extern signed short (*v24) (signed char, unsigned short, signed short, unsigned short);
extern unsigned char v25 (signed int);
extern unsigned char (*v26) (signed int);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
unsigned int v29 (unsigned int, signed short, signed int);
unsigned int (*v30) (unsigned int, signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v77 = 4;
signed char v76 = -2;
unsigned char v75 = 7;

unsigned int v29 (unsigned int v78, signed short v79, signed int v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = -2;
signed int v82 = -2;
unsigned int v81 = 2U;
trace++;
switch (trace)
{
case 4: 
return v81;
case 6: 
return v81;
case 8: 
return v81;
case 10: 
return v81;
default: abort ();
}
}
}
}

signed short v13 (signed short v84, signed char v85, unsigned int v86, signed char v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 0;
signed char v89 = 2;
signed char v88 = -4;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

unsigned char v3 (signed short v91, signed int v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = -4;
signed char v94 = 2;
signed int v93 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
