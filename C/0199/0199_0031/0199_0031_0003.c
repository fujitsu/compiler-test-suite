#include <stdlib.h>
extern signed short v1 (signed short, signed char, signed short);
extern signed short (*v2) (signed short, signed char, signed short);
extern signed short v3 (unsigned int, unsigned char);
extern signed short (*v4) (unsigned int, unsigned char);
extern unsigned int v5 (unsigned int, unsigned int, unsigned int);
extern unsigned int (*v6) (unsigned int, unsigned int, unsigned int);
signed int v7 (signed short, signed int, signed char);
signed int (*v8) (signed short, signed int, signed char) = v7;
extern signed short v9 (unsigned char, unsigned char, signed int, signed int);
extern signed short (*v10) (unsigned char, unsigned char, signed int, signed int);
extern unsigned int v11 (unsigned int, unsigned int, signed int);
extern unsigned int (*v12) (unsigned int, unsigned int, signed int);
extern signed short v13 (unsigned char, signed int, unsigned short);
extern signed short (*v14) (unsigned char, signed int, unsigned short);
extern signed int v15 (signed int, unsigned char);
extern signed int (*v16) (signed int, unsigned char);
extern signed short v17 (void);
extern signed short (*v18) (void);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
unsigned int v21 (unsigned int, signed char, signed char, signed short);
unsigned int (*v22) (unsigned int, signed char, signed char, signed short) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v25 (signed int, unsigned char, unsigned short, unsigned char);
extern signed int (*v26) (signed int, unsigned char, unsigned short, unsigned char);
extern unsigned int v27 (signed short, unsigned short, unsigned short, signed short);
extern unsigned int (*v28) (signed short, unsigned short, unsigned short, signed short);
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v81 = 4;
signed char v80 = -4;
unsigned short v79 = 7;

unsigned int v21 (unsigned int v82, signed char v83, signed char v84, signed short v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = -4;
unsigned short v87 = 0;
unsigned short v86 = 2;
trace++;
switch (trace)
{
case 1: 
return v82;
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
unsigned char v91 = 5;
signed char v90 = 2;
unsigned char v89 = 5;
trace++;
switch (trace)
{
case 3: 
return 6U;
default: abort ();
}
}
}
}

signed int v7 (signed short v92, signed int v93, signed char v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 0;
signed char v96 = -2;
unsigned int v95 = 0U;
trace++;
switch (trace)
{
case 5: 
return v93;
default: abort ();
}
}
}
}
