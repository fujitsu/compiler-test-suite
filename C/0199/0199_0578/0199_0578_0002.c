#include <stdlib.h>
extern unsigned short v1 (unsigned int, unsigned short, unsigned int, signed char);
extern unsigned short (*v2) (unsigned int, unsigned short, unsigned int, signed char);
extern void v3 (unsigned short, signed short, signed int, unsigned char);
extern void (*v4) (unsigned short, signed short, signed int, unsigned char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern void v7 (unsigned char, signed int);
extern void (*v8) (unsigned char, signed int);
extern void v11 (signed int);
extern void (*v12) (signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
extern signed int v17 (unsigned int, signed short, signed int, unsigned char);
extern signed int (*v18) (unsigned int, signed short, signed int, unsigned char);
extern unsigned short v19 (unsigned int);
extern unsigned short (*v20) (unsigned int);
extern unsigned short v21 (signed short, signed short);
extern unsigned short (*v22) (signed short, signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned int v27 (unsigned char, unsigned char);
unsigned int (*v28) (unsigned char, unsigned char) = v27;
signed char v29 (unsigned short);
signed char (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v52 = 5;
signed char v51 = -2;
signed int v50 = -1;

signed char v29 (unsigned short v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 0;
unsigned char v55 = 1;
unsigned short v54 = 7;
trace++;
switch (trace)
{
case 5: 
return -4;
case 7: 
return 3;
case 9: 
return 2;
case 11: 
return -2;
default: abort ();
}
}
}
}

unsigned int v27 (unsigned char v57, unsigned char v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed short v61 = 2;
signed char v60 = -3;
signed int v59 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
