#include <stdlib.h>
extern unsigned short v3 (unsigned int, unsigned char, signed short);
extern unsigned short (*v4) (unsigned int, unsigned char, signed short);
extern unsigned int v5 (signed char, signed int);
extern unsigned int (*v6) (signed char, signed int);
extern void v7 (signed char);
extern void (*v8) (signed char);
extern signed short v9 (signed char, signed short, unsigned int, unsigned char);
extern signed short (*v10) (signed char, signed short, unsigned int, unsigned char);
signed short v11 (void);
signed short (*v12) (void) = v11;
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern unsigned short v15 (unsigned char, signed int, signed short, signed int);
extern unsigned short (*v16) (unsigned char, signed int, signed short, signed int);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern signed int v19 (unsigned char, signed char, signed int);
extern signed int (*v20) (unsigned char, signed char, signed int);
extern unsigned char v21 (unsigned short, signed int, unsigned char, signed short);
extern unsigned char (*v22) (unsigned short, signed int, unsigned char, signed short);
extern signed char v23 (void);
extern signed char (*v24) (void);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned char v27 (unsigned short, unsigned short, signed short);
extern unsigned char (*v28) (unsigned short, unsigned short, signed short);
unsigned int v29 (signed int, signed char, unsigned int, signed int);
unsigned int (*v30) (signed int, signed char, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v91 = 1;
signed int v90 = -1;
unsigned int v89 = 2U;

unsigned int v29 (signed int v92, signed char v93, unsigned int v94, signed int v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 7;
signed int v97 = -2;
signed int v96 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (void)
{
{
for (;;) {
unsigned char v101 = 0;
unsigned short v100 = 7;
signed short v99 = -3;
trace++;
switch (trace)
{
case 2: 
return -4;
case 4: 
return 0;
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
signed char v104 = 2;
unsigned char v103 = 1;
signed int v102 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
