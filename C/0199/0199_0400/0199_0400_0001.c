#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
signed int v3 (unsigned char, signed char);
signed int (*v4) (unsigned char, signed char) = v3;
signed int v5 (unsigned int, unsigned int, signed short, unsigned char);
signed int (*v6) (unsigned int, unsigned int, signed short, unsigned char) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned int, signed char);
extern unsigned int (*v10) (unsigned short, unsigned int, signed char);
extern unsigned char v11 (unsigned short, unsigned short, unsigned short);
extern unsigned char (*v12) (unsigned short, unsigned short, unsigned short);
extern signed short v13 (signed short, unsigned short);
extern signed short (*v14) (signed short, unsigned short);
extern signed char v15 (unsigned char, signed char);
extern signed char (*v16) (unsigned char, signed char);
extern unsigned int v17 (signed short, signed int);
extern unsigned int (*v18) (signed short, signed int);
extern signed short v21 (signed char, signed char);
extern signed short (*v22) (signed char, signed char);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed int v29 (signed short, signed char);
extern signed int (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v41 = 3;
signed char v40 = -3;
signed char v39 = 0;

signed int v5 (unsigned int v42, unsigned int v43, signed short v44, unsigned char v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = 0;
unsigned char v47 = 4;
signed short v46 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned char v49, signed char v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = -3;
signed char v52 = -4;
signed int v51 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
