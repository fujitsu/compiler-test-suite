#include <stdlib.h>
extern signed int v1 (signed short, signed char, signed char);
extern signed int (*v2) (signed short, signed char, signed char);
signed short v3 (signed char, unsigned int);
signed short (*v4) (signed char, unsigned int) = v3;
extern void v5 (unsigned short, signed short);
extern void (*v6) (unsigned short, signed short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed char v9 (void);
extern signed char (*v10) (void);
unsigned char v11 (unsigned int, unsigned short, unsigned char);
unsigned char (*v12) (unsigned int, unsigned short, unsigned char) = v11;
extern signed int v13 (signed char, unsigned short, signed int);
extern signed int (*v14) (signed char, unsigned short, signed int);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (unsigned int, signed char, unsigned short);
extern void (*v28) (unsigned int, signed char, unsigned short);
extern signed char v29 (unsigned int, signed short, unsigned short);
extern signed char (*v30) (unsigned int, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v49 = 1;
unsigned int v48 = 3U;
unsigned short v47 = 4;

unsigned char v11 (unsigned int v50, unsigned short v51, unsigned char v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned char v55 = 0;
unsigned short v54 = 5;
signed int v53 = 0;
trace++;
switch (trace)
{
case 1: 
return 7;
case 6: 
return v55;
default: abort ();
}
}
}
}

signed short v3 (signed char v56, unsigned int v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 6;
signed char v59 = -1;
signed short v58 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
