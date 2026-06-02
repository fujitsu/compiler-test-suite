#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned char, signed short);
extern signed short (*v4) (unsigned short, unsigned char, signed short);
extern signed short v5 (signed short, unsigned char, unsigned char);
extern signed short (*v6) (signed short, unsigned char, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
signed short v9 (signed int, signed short, signed short, unsigned char);
signed short (*v10) (signed int, signed short, signed short, unsigned char) = v9;
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed char v15 (signed int, signed short, unsigned short);
extern signed char (*v16) (signed int, signed short, unsigned short);
extern unsigned char v17 (unsigned char, signed short, unsigned int, unsigned char);
extern unsigned char (*v18) (unsigned char, signed short, unsigned int, unsigned char);
extern signed int v19 (signed int, signed int, unsigned short, unsigned char);
extern signed int (*v20) (signed int, signed int, unsigned short, unsigned char);
extern void v21 (signed char, signed short, signed char, unsigned short);
extern void (*v22) (signed char, signed short, signed char, unsigned short);
extern signed int v23 (signed char, signed char);
extern signed int (*v24) (signed char, signed char);
extern signed char v25 (signed short, unsigned char);
extern signed char (*v26) (signed short, unsigned char);
extern unsigned char v27 (signed short, signed short, unsigned int, unsigned short);
extern unsigned char (*v28) (signed short, signed short, unsigned int, unsigned short);
extern signed short v29 (unsigned char, signed char);
extern signed short (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v79 = -3;
unsigned int v78 = 0U;
unsigned short v77 = 1;

unsigned short v11 (void)
{
{
for (;;) {
signed char v82 = 0;
unsigned int v81 = 6U;
unsigned int v80 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed int v83, signed short v84, signed short v85, unsigned char v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 2;
signed int v88 = -1;
signed int v87 = -4;
trace++;
switch (trace)
{
case 4: 
return v85;
case 8: 
return -4;
case 10: 
return 2;
default: abort ();
}
}
}
}
