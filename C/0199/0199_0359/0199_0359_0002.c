#include <stdlib.h>
extern unsigned short v3 (unsigned int, unsigned short, signed int, signed short);
extern unsigned short (*v4) (unsigned int, unsigned short, signed int, signed short);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
unsigned int v7 (unsigned short, signed char, unsigned int);
unsigned int (*v8) (unsigned short, signed char, unsigned int) = v7;
extern unsigned int v9 (signed int, unsigned short);
extern unsigned int (*v10) (signed int, unsigned short);
extern unsigned short v11 (signed short, unsigned int);
extern unsigned short (*v12) (signed short, unsigned int);
extern signed int v13 (unsigned int, signed int);
extern signed int (*v14) (unsigned int, signed int);
extern unsigned char v15 (signed int, signed int, signed int);
extern unsigned char (*v16) (signed int, signed int, signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed int v19 (unsigned short, signed short);
extern signed int (*v20) (unsigned short, signed short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
signed int v25 (signed char);
signed int (*v26) (signed char) = v25;
extern unsigned short v27 (signed short);
extern unsigned short (*v28) (signed short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v87 = 7U;
unsigned char v86 = 1;
signed char v85 = -2;

signed int v25 (signed char v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = 3;
unsigned short v90 = 4;
signed short v89 = -3;
trace++;
switch (trace)
{
case 4: 
return -2;
case 9: 
return -1;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v92, signed char v93, unsigned int v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = 0;
signed char v96 = -3;
signed int v95 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
