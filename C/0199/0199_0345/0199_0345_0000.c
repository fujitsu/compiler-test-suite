#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed int, signed short, signed short, signed int);
static signed short (*v2) (signed int, signed short, signed short, signed int) = v1;
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern signed short v5 (signed int, signed int, signed short, unsigned short);
extern signed short (*v6) (signed int, signed int, signed short, unsigned short);
extern unsigned char v7 (unsigned short, unsigned short, unsigned int);
extern unsigned char (*v8) (unsigned short, unsigned short, unsigned int);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (signed char, unsigned char);
extern unsigned char (*v14) (signed char, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (unsigned int, unsigned short, unsigned int);
extern unsigned char (*v18) (unsigned int, unsigned short, unsigned int);
extern signed char v19 (void);
extern signed char (*v20) (void);
signed short v23 (unsigned int);
signed short (*v24) (unsigned int) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (unsigned char, unsigned char, unsigned char);
extern unsigned int (*v28) (unsigned char, unsigned char, unsigned char);
extern void v29 (unsigned int, unsigned int, signed char, signed short);
extern void (*v30) (unsigned int, unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed int v32 = 3;
signed char v31 = 0;

signed short v23 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 0U;
signed short v36 = -4;
signed int v35 = 3;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v38;
unsigned int v39;
signed char v40;
signed short v41;
v38 = v34 + v37;
v39 = v34 + 6U;
v40 = 2 + 0;
v41 = 1 - 3;
v29 (v38, v39, v40, v41);
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

static signed short v1 (signed int v42, signed short v43, signed short v44, signed int v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = -4;
unsigned char v47 = 1;
signed short v46 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v49;
unsigned short v50;
unsigned int v51;
unsigned char v52;
v49 = 3U + 0U;
v50 = 5 - 2;
v51 = 3U - 7U;
v52 = v17 (v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 4: 
{
signed char v53;
v53 = v48 + v48;
v9 (v53);
}
break;
case 16: 
return v44;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v56;
signed short v57;
signed short v58;
signed int v59;
signed short v60;
v56 = v32 + v32;
v57 = 3 - 1;
v58 = 1 - -2;
v59 = v32 + v32;
v60 = v1 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
