#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char, signed char);
extern signed short (*v2) (signed char, signed char);
extern signed char v3 (unsigned char, signed int);
extern signed char (*v4) (unsigned char, signed int);
extern signed int v5 (unsigned int, unsigned short);
extern signed int (*v6) (unsigned int, unsigned short);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
void v15 (signed short);
void (*v16) (signed short) = v15;
extern unsigned short v17 (unsigned short, unsigned int, signed int, signed char);
extern unsigned short (*v18) (unsigned short, unsigned int, signed int, signed char);
extern void v19 (signed short);
extern void (*v20) (signed short);
signed short v21 (unsigned char);
signed short (*v22) (unsigned char) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed int v25 (unsigned int, unsigned short, unsigned char);
extern signed int (*v26) (unsigned int, unsigned short, unsigned char);
signed int v27 (unsigned short, unsigned short, signed int);
signed int (*v28) (unsigned short, unsigned short, signed int) = v27;
extern unsigned short v29 (signed char, signed short);
extern unsigned short (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
signed short v32 = 0;
signed short v31 = -1;

signed int v27 (unsigned short v34, unsigned short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 2;
signed short v38 = 1;
unsigned int v37 = 5U;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v40;
unsigned short v41;
signed int v42;
v40 = 3U - v37;
v41 = v34 + 2;
v42 = v5 (v40, v41);
history[history_index++] = (int)v42;
}
break;
case 3: 
{
unsigned int v43;
unsigned short v44;
signed int v45;
v43 = 2U + 5U;
v44 = 4 + 3;
v45 = v5 (v43, v44);
history[history_index++] = (int)v45;
}
break;
case 5: 
return -4;
default: abort ();
}
}
}
}

signed short v21 (unsigned char v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 1;
signed char v48 = -2;
signed short v47 = 3;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v50;
v50 = v23 ();
history[history_index++] = (int)v50;
}
break;
case 9: 
return v47;
default: abort ();
}
}
}
}

void v15 (signed short v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = 2;
signed int v53 = -4;
signed char v52 = -2;
trace++;
switch (trace)
{
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
signed char v57;
signed char v58;
signed short v59;
v57 = 0 - v33;
v58 = 3 - 3;
v59 = v1 (v57, v58);
history[history_index++] = (int)v59;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
