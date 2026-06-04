#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed int v5 (unsigned short, signed short, signed int, unsigned short);
extern signed int (*v6) (unsigned short, signed short, signed int, unsigned short);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern void v9 (void);
extern void (*v10) (void);
extern signed char v11 (signed short, unsigned short, unsigned char);
extern signed char (*v12) (signed short, unsigned short, unsigned char);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
unsigned int v17 (signed int, unsigned char, unsigned int, signed char);
unsigned int (*v18) (signed int, unsigned char, unsigned int, signed char) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
void v23 (unsigned short, signed char, unsigned short, signed short);
void (*v24) (unsigned short, signed char, unsigned short, signed short) = v23;
extern signed short v25 (unsigned char, signed char, signed char, signed char);
extern signed short (*v26) (unsigned char, signed char, signed char, signed char);
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v68 = 5;
signed int v67 = -4;
unsigned int v66 = 1U;

void v23 (unsigned short v69, signed char v70, unsigned short v71, signed short v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed short v75 = 0;
signed int v74 = 3;
unsigned int v73 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed int v76, unsigned char v77, unsigned int v78, signed char v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = -4;
unsigned char v81 = 1;
unsigned int v80 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
