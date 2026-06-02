#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed char v3 (unsigned int, signed char);
extern signed char (*v4) (unsigned int, signed char);
extern signed char v5 (unsigned int, signed char);
extern signed char (*v6) (unsigned int, signed char);
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned short v11 (signed short, signed char);
extern unsigned short (*v12) (signed short, signed char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
unsigned short v23 (unsigned int, unsigned short);
unsigned short (*v24) (unsigned int, unsigned short) = v23;
extern unsigned int v25 (unsigned int, signed int, signed int);
extern unsigned int (*v26) (unsigned int, signed int, signed int);
unsigned char v27 (unsigned short, signed short, unsigned char);
unsigned char (*v28) (unsigned short, signed short, unsigned char) = v27;
extern unsigned short v29 (signed short, unsigned int, signed short);
extern unsigned short (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v69 = -2;
unsigned char v68 = 1;
unsigned short v67 = 0;

unsigned char v27 (unsigned short v70, signed short v71, unsigned char v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 6U;
unsigned char v74 = 2;
unsigned int v73 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned int v76, unsigned short v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 1;
unsigned int v79 = 5U;
signed short v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
