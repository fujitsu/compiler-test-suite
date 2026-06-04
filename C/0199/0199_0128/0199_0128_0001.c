#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern signed char v3 (unsigned short, signed char, unsigned int);
extern signed char (*v4) (unsigned short, signed char, unsigned int);
extern unsigned int v5 (unsigned int, signed char);
extern unsigned int (*v6) (unsigned int, signed char);
extern unsigned short v7 (unsigned short, unsigned short, signed short);
extern unsigned short (*v8) (unsigned short, unsigned short, signed short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (signed int, unsigned short, unsigned int);
extern signed char (*v14) (signed int, unsigned short, unsigned int);
extern signed int v15 (unsigned int, signed short, signed int);
extern signed int (*v16) (unsigned int, signed short, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern unsigned int v21 (unsigned short, unsigned int);
extern unsigned int (*v22) (unsigned short, unsigned int);
void v23 (unsigned short, signed short);
void (*v24) (unsigned short, signed short) = v23;
extern unsigned short v25 (unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int);
unsigned char v27 (signed int, signed short, signed short, unsigned short);
unsigned char (*v28) (signed int, signed short, signed short, unsigned short) = v27;
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v48 = 0;
signed short v47 = -2;
signed char v46 = -3;

unsigned char v27 (signed int v49, signed short v50, signed short v51, unsigned short v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 3U;
unsigned short v54 = 3;
unsigned short v53 = 0;
trace++;
switch (trace)
{
case 2: 
return 0;
case 4: 
return 6;
case 6: 
return 3;
case 8: 
return 0;
case 10: 
return 5;
default: abort ();
}
}
}
}

void v23 (unsigned short v56, signed short v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned char v60 = 6;
unsigned char v59 = 3;
unsigned short v58 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
