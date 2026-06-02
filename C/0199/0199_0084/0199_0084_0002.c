#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern unsigned char v3 (signed short, signed char);
extern unsigned char (*v4) (signed short, signed char);
extern void v5 (unsigned char, unsigned int, signed int, unsigned char);
extern void (*v6) (unsigned char, unsigned int, signed int, unsigned char);
unsigned short v7 (unsigned int, signed char, signed int, unsigned int);
unsigned short (*v8) (unsigned int, signed char, signed int, unsigned int) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed int v15 (unsigned char, unsigned char);
extern signed int (*v16) (unsigned char, unsigned char);
extern signed char v17 (signed short);
extern signed char (*v18) (signed short);
extern void v19 (signed int, unsigned int, signed int, signed char);
extern void (*v20) (signed int, unsigned int, signed int, signed char);
extern signed char v21 (signed short, unsigned int);
extern signed char (*v22) (signed short, unsigned int);
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
extern unsigned int v27 (signed char, unsigned char, signed short, unsigned short);
extern unsigned int (*v28) (signed char, unsigned char, signed short, unsigned short);
signed short v29 (unsigned int, signed int);
signed short (*v30) (unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v69 = -3;
signed int v68 = 0;
signed short v67 = -2;

signed short v29 (unsigned int v70, signed int v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned int v74 = 2U;
unsigned short v73 = 5;
signed short v72 = -1;
trace++;
switch (trace)
{
case 2: 
return v72;
case 4: 
return 0;
case 6: 
return v72;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v75, signed char v76, signed int v77, unsigned int v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 0U;
unsigned char v80 = 3;
unsigned char v79 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
