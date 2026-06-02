#include <stdlib.h>
extern signed short v1 (signed char, unsigned short, signed short, signed char);
extern signed short (*v2) (signed char, unsigned short, signed short, signed char);
signed int v3 (unsigned short, signed int, unsigned char, unsigned char);
signed int (*v4) (unsigned short, signed int, unsigned char, unsigned char) = v3;
extern unsigned short v5 (unsigned char, unsigned short, signed short, signed short);
extern unsigned short (*v6) (unsigned char, unsigned short, signed short, signed short);
extern unsigned short v7 (signed char, unsigned char, signed char, unsigned int);
extern unsigned short (*v8) (signed char, unsigned char, signed char, unsigned int);
extern signed char v9 (unsigned int, unsigned int, unsigned short);
extern signed char (*v10) (unsigned int, unsigned int, unsigned short);
extern unsigned char v11 (unsigned int);
extern unsigned char (*v12) (unsigned int);
extern unsigned int v15 (signed char, signed int, signed int);
extern unsigned int (*v16) (signed char, signed int, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned int v19 (signed short, unsigned short, signed int);
extern unsigned int (*v20) (signed short, unsigned short, signed int);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern signed char v23 (signed int, unsigned short, unsigned char, unsigned short);
extern signed char (*v24) (signed int, unsigned short, unsigned char, unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern void v27 (signed short, signed int, signed short);
extern void (*v28) (signed short, signed int, signed short);
unsigned int v29 (signed short, unsigned int);
unsigned int (*v30) (signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v56 = 0;
signed short v55 = 1;
unsigned char v54 = 1;

unsigned int v29 (signed short v57, unsigned int v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed int v61 = 3;
signed short v60 = -3;
signed short v59 = 3;
trace++;
switch (trace)
{
case 5: 
return v58;
case 7: 
return 3U;
default: abort ();
}
}
}
}

signed int v3 (unsigned short v62, signed int v63, unsigned char v64, unsigned char v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 7U;
signed char v67 = 0;
signed char v66 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
