#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
unsigned short v3 (unsigned char, unsigned short);
unsigned short (*v4) (unsigned char, unsigned short) = v3;
extern unsigned char v5 (unsigned int, unsigned short);
extern unsigned char (*v6) (unsigned int, unsigned short);
extern unsigned int v7 (signed char, signed short, unsigned short);
extern unsigned int (*v8) (signed char, signed short, unsigned short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed char v11 (unsigned short, signed int, unsigned short);
extern signed char (*v12) (unsigned short, signed int, unsigned short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed int v15 (unsigned char, unsigned int, signed short);
extern signed int (*v16) (unsigned char, unsigned int, signed short);
extern signed short v19 (unsigned short, signed short, signed char);
extern signed short (*v20) (unsigned short, signed short, signed char);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (signed int, unsigned short);
extern unsigned short (*v26) (signed int, unsigned short);
signed char v27 (signed int, unsigned short, signed char, unsigned char);
signed char (*v28) (signed int, unsigned short, signed char, unsigned char) = v27;
extern signed int v29 (unsigned int, unsigned short);
extern signed int (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v48 = -4;
signed int v47 = -3;
signed char v46 = -1;

signed char v27 (signed int v49, unsigned short v50, signed char v51, unsigned char v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 7U;
signed char v54 = 1;
unsigned char v53 = 5;
trace++;
switch (trace)
{
case 5: 
return v51;
case 7: 
return -1;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v56, unsigned short v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned char v60 = 1;
unsigned short v59 = 1;
signed short v58 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
