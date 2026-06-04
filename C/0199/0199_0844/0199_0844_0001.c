#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
signed int v3 (unsigned char, unsigned short, unsigned short, signed char);
signed int (*v4) (unsigned char, unsigned short, unsigned short, signed char) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
extern void v9 (signed int, unsigned int, signed int, unsigned short);
extern void (*v10) (signed int, unsigned int, signed int, unsigned short);
extern unsigned int v11 (unsigned char, unsigned char, signed int);
extern unsigned int (*v12) (unsigned char, unsigned char, signed int);
extern unsigned int v13 (unsigned short, unsigned short);
extern unsigned int (*v14) (unsigned short, unsigned short);
extern void v15 (unsigned char, signed char, signed int, unsigned short);
extern void (*v16) (unsigned char, signed char, signed int, unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed int v21 (signed short, unsigned char, signed int);
extern signed int (*v22) (signed short, unsigned char, signed int);
unsigned short v23 (unsigned int, signed char);
unsigned short (*v24) (unsigned int, signed char) = v23;
extern signed short v25 (signed short, unsigned int, unsigned short, signed short);
extern signed short (*v26) (signed short, unsigned int, unsigned short, signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed short v29 (unsigned char, signed char);
extern signed short (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v62 = -1;
unsigned char v61 = 4;
unsigned char v60 = 5;

unsigned short v23 (unsigned int v63, signed char v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = -2;
signed char v66 = 1;
signed char v65 = -3;
trace++;
switch (trace)
{
case 5: 
return 6;
case 7: 
return 1;
default: abort ();
}
}
}
}

signed int v3 (unsigned char v68, unsigned short v69, unsigned short v70, signed char v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = 3;
signed short v73 = -4;
unsigned char v72 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
