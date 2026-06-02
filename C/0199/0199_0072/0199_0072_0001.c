#include <stdlib.h>
extern signed int v1 (unsigned char, signed short, signed int, unsigned short);
extern signed int (*v2) (unsigned char, signed short, signed int, unsigned short);
extern unsigned int v3 (unsigned short, unsigned int);
extern unsigned int (*v4) (unsigned short, unsigned int);
extern unsigned char v5 (signed int, unsigned char, unsigned int);
extern unsigned char (*v6) (signed int, unsigned char, unsigned int);
extern unsigned char v7 (signed int, unsigned char, signed char, signed short);
extern unsigned char (*v8) (signed int, unsigned char, signed char, signed short);
unsigned char v9 (unsigned int, signed char, unsigned char, unsigned int);
unsigned char (*v10) (unsigned int, signed char, unsigned char, unsigned int) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern void v15 (unsigned char, unsigned char, signed int);
extern void (*v16) (unsigned char, unsigned char, signed int);
unsigned char v17 (signed int);
unsigned char (*v18) (signed int) = v17;
extern signed short v19 (unsigned char, unsigned char, signed short, unsigned int);
extern signed short (*v20) (unsigned char, unsigned char, signed short, unsigned int);
extern unsigned int v21 (unsigned char, signed short, unsigned short);
extern unsigned int (*v22) (unsigned char, signed short, unsigned short);
extern unsigned short v23 (signed short, unsigned int);
extern unsigned short (*v24) (signed short, unsigned int);
extern unsigned int v25 (signed char, signed short, unsigned int, signed char);
extern unsigned int (*v26) (signed char, signed short, unsigned int, signed char);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern signed int v29 (unsigned int, unsigned char, signed short, unsigned int);
extern signed int (*v30) (unsigned int, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v63 = -3;
unsigned short v62 = 4;
unsigned int v61 = 0U;

unsigned char v17 (signed int v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = -3;
unsigned char v66 = 6;
signed int v65 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v68, signed char v69, unsigned char v70, unsigned int v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned char v74 = 1;
unsigned int v73 = 2U;
unsigned char v72 = 7;
trace++;
switch (trace)
{
case 2: 
return v72;
case 4: 
return v70;
case 6: 
return v70;
case 8: 
return v74;
case 10: 
return v70;
default: abort ();
}
}
}
}
