#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed int, signed short);
extern unsigned int (*v2) (unsigned int, signed int, signed short);
signed short v3 (signed char);
signed short (*v4) (signed char) = v3;
extern unsigned short v5 (signed short, signed char, signed char);
extern unsigned short (*v6) (signed short, signed char, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned int v11 (unsigned int, signed short);
extern unsigned int (*v12) (unsigned int, signed short);
extern unsigned short v13 (unsigned int, unsigned int);
extern unsigned short (*v14) (unsigned int, unsigned int);
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
extern signed char v17 (unsigned short, signed char);
extern signed char (*v18) (unsigned short, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned char v23 (signed short, signed int);
extern unsigned char (*v24) (signed short, signed int);
extern void v25 (void);
extern void (*v26) (void);
unsigned char v27 (signed int, unsigned int, signed short);
unsigned char (*v28) (signed int, unsigned int, signed short) = v27;
extern unsigned short v29 (unsigned short, signed int);
extern unsigned short (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v55 = 2;
unsigned char v54 = 7;
signed int v53 = -1;

unsigned char v27 (signed int v56, unsigned int v57, signed short v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 3U;
signed char v60 = -1;
signed char v59 = -2;
trace++;
switch (trace)
{
case 11: 
return 5;
default: abort ();
}
}
}
}

signed short v3 (signed char v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 6U;
unsigned char v64 = 3;
signed char v63 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
