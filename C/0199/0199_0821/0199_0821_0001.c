#include <stdlib.h>
extern signed char v1 (unsigned short, signed short);
extern signed char (*v2) (unsigned short, signed short);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
signed short v9 (signed char);
signed short (*v10) (signed char) = v9;
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern unsigned char v13 (unsigned char, signed short);
extern unsigned char (*v14) (unsigned char, signed short);
extern unsigned short v15 (signed short, unsigned char);
extern unsigned short (*v16) (signed short, unsigned char);
extern unsigned int v17 (signed short, unsigned int, signed int);
extern unsigned int (*v18) (signed short, unsigned int, signed int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (signed int, signed char);
extern signed char (*v22) (signed int, signed char);
extern unsigned int v23 (unsigned char, signed short, signed char, unsigned int);
extern unsigned int (*v24) (unsigned char, signed short, signed char, unsigned int);
signed char v25 (signed short, signed short, unsigned int, signed short);
signed char (*v26) (signed short, signed short, unsigned int, signed short) = v25;
extern signed char v27 (unsigned int);
extern signed char (*v28) (unsigned int);
extern signed char v29 (unsigned int, signed short, unsigned int);
extern signed char (*v30) (unsigned int, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v64 = 2;
signed char v63 = 3;
signed short v62 = -1;

signed char v25 (signed short v65, signed short v66, unsigned int v67, signed short v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned int v71 = 3U;
unsigned char v70 = 1;
unsigned short v69 = 2;
trace++;
switch (trace)
{
case 3: 
return 1;
default: abort ();
}
}
}
}

signed short v9 (signed char v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = 3;
unsigned short v74 = 4;
signed short v73 = 3;
trace++;
switch (trace)
{
case 9: 
return v73;
default: abort ();
}
}
}
}
