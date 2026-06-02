#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned short);
extern unsigned short (*v2) (signed short, unsigned short);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
signed int v5 (signed char, unsigned short, signed short, unsigned char);
signed int (*v6) (signed char, unsigned short, signed short, unsigned char) = v5;
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
extern signed int v9 (unsigned int, unsigned int, signed char, signed int);
extern signed int (*v10) (unsigned int, unsigned int, signed char, signed int);
extern void v11 (signed char, signed int, unsigned short);
extern void (*v12) (signed char, signed int, unsigned short);
extern signed char v13 (signed char, signed short);
extern signed char (*v14) (signed char, signed short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned char v17 (signed char, unsigned short);
extern unsigned char (*v18) (signed char, unsigned short);
extern signed char v19 (signed char);
extern signed char (*v20) (signed char);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern void v23 (unsigned short, unsigned int, signed char);
extern void (*v24) (unsigned short, unsigned int, signed char);
extern unsigned short v25 (unsigned short);
extern unsigned short (*v26) (unsigned short);
extern unsigned short v27 (signed int);
extern unsigned short (*v28) (signed int);
extern signed short v29 (unsigned short, unsigned char);
extern signed short (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v55 = -1;
unsigned short v54 = 1;
unsigned short v53 = 1;

signed int v5 (signed char v56, unsigned short v57, signed short v58, unsigned char v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = -1;
unsigned short v61 = 3;
signed int v60 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
